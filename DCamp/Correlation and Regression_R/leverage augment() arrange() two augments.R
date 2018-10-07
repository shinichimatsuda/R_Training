# Rank high leverage points
mod %>%
  augment() %>%
  arrange(desc(.hat, .cooksd)) %>%
  head()
