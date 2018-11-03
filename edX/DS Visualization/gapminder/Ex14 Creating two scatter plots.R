library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

gapminder %>%
  filter((year == 1970 | year == 2010) & continent == "Africa" & !is.na(gdp) & !is.na(infant_mortality)) %>%
  mutate(dollars_per_day = gdp/population/365) %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region, label = country)) +
  geom_point() +
  scale_x_continuous(trans = "log2") +
  geom_text() +
  facet_grid(year ~.)
