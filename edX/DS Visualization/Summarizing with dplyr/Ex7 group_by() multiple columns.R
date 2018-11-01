library(NHANES)
data(NHANES)

NHANES %>%
  group_by(AgeDecade, Gender) %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation =sd(BPSysAve, na.rm = TRUE))
