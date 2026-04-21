library(ggplot2)

swallow_dat = read.csv("5NovPatchData.csv")
#View(swallow_dat)

# Hypothesis: patch area vs colony size
# testing to see if larger patch area corresponds with larger colony size

# histogram of response variable
hist(swallow_dat$Colony.Size)

# Poisson GLM
g1 = glm(Colony.Size~Area,data=swallow_dat, family="poisson");
summary(g1)
#can you use a poisson? is this overdispersed?

library(effects)
plot(allEffects(g1))

# model shows that patch area is statistically significant predictor of colony size
# since p-value is much less than 0.05, and since the slope is positive it suggests that
# larger patch area size relates to larger colony sizes

# plotting
dat.new = expand.grid(Area=seq(from = min(swallow_dat$Area),
                               to = max(swallow_dat$Area),
                               length.out = 100)
)

dat.new$yhat  = predict(g1,type="response",newdata = dat.new)
swallow_dat$yhat2 = predict(g1,type="response")
head(dat.new)
head(swallow_dat)

library(ggplot2)
plot1=ggplot(data=swallow_dat,aes(x=Area,y=Colony.Size))+
  geom_point(size=2,shape =1) +
  geom_line(data=dat.new, aes(x=Area,y=yhat))
plot1

