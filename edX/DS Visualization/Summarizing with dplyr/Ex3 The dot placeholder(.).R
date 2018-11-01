library(dplyr)
library(NHANES)
data(NHANES)
## modify the code we wrote for previous exercise.
ref_avg <- NHANES %>%
  filter(AgeDecade == " 20-29" & Gender == "female") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE)) %>%
  .$average #The dot placeholder(.) followed by $ can get original numeric value.
