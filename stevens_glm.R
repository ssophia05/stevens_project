library(ggplot2)

swallow_dat = read.csv("5NovPatchData.csv")
View(data)

# Hypothesis: patch area vs colony size

# histogram shows normal distribution
hist(swallow_dat$Colony.Size)

g1 = glm(Colony.Size~Area,data=swallow_dat, family="poisson");
summary(g1)

library(effects)
plot(allEffects(g1))

dat.new = expand.grid(Area=seq(from = min(swallow_dat$Area),
                               to = max(swallow_dat$Area),
                               length.out = 100)

dat.new$yhat  = predict(g2,type="response",newdata = dat.new)
bat$yhat2 = predict(g2,type="response")
head(dat.new)


