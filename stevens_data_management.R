library(tidyverse)
library(tidyr)
library(dplyr)

# reading in csv
swallowdat = read.csv("5NovPatchData.csv")
head(swallowdat)
View(swallowdat)

#checking naming inconsistencies
unique(swallowdat$Area)
unique(swallowdat$forehead)

# using group_by to subset data 
# summarise creates a table of that subset 
swallowdat %>% 
  group_by(Sex) %>% 
  summarise(forehead.by.sex = mean(forehead, na.rm=T))

# mutate adds a new column to the dataset based on variables input into group_by
swallowdat = swallowdat %>% 
  group_by(Area,Colony.Site,Sex) %>% 
  mutate(sample.size=n())
swallowdat
  