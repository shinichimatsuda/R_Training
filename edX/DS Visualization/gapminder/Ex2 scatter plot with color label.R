library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

gapminder %>%
  filter(continent == "Africa" & year == "2012") %>%
  ggplot(aes(x = fertility, y = life_expectancy, color = region)) +
  geom_point()
