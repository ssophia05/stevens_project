#install.packages("performance")
#install.packages("see")
library(performance)
library(ggplot2)

swallowdat=read.csv("5NovPatchData.csv")

# hypothesis - as forhead patch area increases, brightness of the forhead patch also increases
# predictor - area, response - brightness
model <- lm(forehead ~ Area, data = swallowdat)
summary(model)

# diagnostic plot
# residuals scattered around 0 so no clear pattern
# assumptions of linearity mostly satisfied
check_model(model, check="linearity")
#KL - need to check other model diagnostics, e.g.
plot(model)

# plotting relationship between patch area and brightness
# weak negative relationship between patch area and brightness suggesting against hypothesis
# points are very scattered so there isn't an obvious relationship
r=ggplot(swallowdat, aes(x=Area, y=forehead)) +
  geom_point() +
  stat_smooth(method="lm") +
  theme_bw() +
  labs(
    title = "Relationship Between Patch Area and Forehead Brightness",
    x = "Patch Area (mm^2)",
    y = "Forehead Brightness"
  )
print(r)
