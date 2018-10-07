# Rank influential points
mod %>%
  augment() %>%
  arrange(desc(.cooksd)) %>%
  head()
