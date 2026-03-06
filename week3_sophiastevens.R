rm(list=ls())

library(ggplot2)

# reading in cliff swallow data 
swallowdat <- read.csv("5NovPatchData.csv")
View(swallowdat)

# used boxplot with jitter points to compare the difference between 
# male and female cliff swallow patch area
ggplot(swallowdat,aes(Sex,Area))+
  geom_point(aes(Sex,jitter(Area,factor=1.5)),shape=2,size=3)+
  geom_boxplot(fill=NA) + 
  labs(title = "Male vs Female Patch Area", x="Sex", 
       y="Patch Area")


# use Welch two-sample t-test to determine whether the mean patch
# area differs between males and females.
tt <- t.test(Area~Sex, data=swallowdat)
tt
# p-value of 0.0003067 suggests that the difference in mean patch area between 
# males and females is statistically significant

# -----Additional Plots-----

# sex vs forehead brightness
ggplot(swallowdat, aes(Sex, forehead)) +
  geom_point(aes(y = jitter(forehead, factor = 1.5)), shape = 2, size = 3) +
  geom_boxplot(fill = NA)

# Welch two-sample t-test to determine whether forehead brightness
# differs between males and females.
tt <- t.test(forehead~Sex, data=swallowdat)
tt
# p-value of 0.9814 suggests no statistical significance between forehead brightness
# of males vs females

# scatter plot of patch area vs forehead brightness
# no clear relationship seen
ggplot(swallowdat, aes(Area, forehead)) +
  geom_point() + labs(title = "Relationship Between Patch Area and Forehead Brightness")



