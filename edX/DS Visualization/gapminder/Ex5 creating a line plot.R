library(dplyr)

tab <- gapminder %>%
  filter((year >= 1960 & year <= 2010) & (country == "Vietnam" | country == "United States"))

## Depict a line plot.
p <- tab %>%
  ggplot(aes(x = year, y = life_expectancy, color = country)) +
  geom_line()
