library(dplyr)
library(NHANES)
data(NHANES)

## complete the line
NHANES %>%
      filter(AgeDecade == " 20-29"  & Gender == "female") %>%
      summarize(min = min(BPSysAve, na.rm = TRUE), max = max(BPSysAve, na.rm = TRUE))
