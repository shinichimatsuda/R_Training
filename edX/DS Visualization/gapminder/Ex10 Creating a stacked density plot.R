library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

dollars_per_day <- gapminder %>%
  filter((year == 1970 | year == 2010) & continent == "Africa" & !is.na(gdp)) %>%
  mutate(dollars_per_day = gdp/population/365) %>%
  ggplot(aes(x = dollars_per_day, fill = region)) +
  geom_density(bw = 0.5, position = "stack") +
  scale_x_continuous(trans = "log2") +
  facet_grid(~ year)
