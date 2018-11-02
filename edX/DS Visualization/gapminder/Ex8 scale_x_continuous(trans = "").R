daydollars <- gapminder %>%
  filter(year == 2010, continent == "Africa", !is.na(gdp)) %>%
  mutate(dollars_per_day = gdp/population/365)

daydollars %>%
  ggplot(aes(dollars_per_day)) +
  geom_density() +
  scale_x_continuous(trans = "log2")
