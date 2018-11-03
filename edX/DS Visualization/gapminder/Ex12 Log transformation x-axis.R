gapminder_Africa_2010 %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region)) +
  geom_point() +
  scale_x_continuous(trans = "log2")
