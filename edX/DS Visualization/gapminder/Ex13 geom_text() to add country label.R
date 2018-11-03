gapminder_Africa_2010 %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region, label = country)) +
  geom_point() +
  scale_x_continuous(trans = "log2") +
  geom_text()
