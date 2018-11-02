library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

gapminder %>%
  filter((year >= 1960 & year <= 2010), country == "Cambodia") %>%
  ggplot(aes(x = year, y = life_expectancy)) +
  geom_line()
