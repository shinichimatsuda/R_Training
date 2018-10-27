library(dplyr)
library(NHANES)
data(NHANES)

## fill in what is needed
tab <- NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female")
