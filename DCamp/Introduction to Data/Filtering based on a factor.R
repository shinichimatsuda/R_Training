library(dplyr)

# Subset of emails with big numbers: email50_big
email50_big <- email50 %>%
  filter(email50$number == "big")

# Glimpse the subset
glimpse(email50_big)
