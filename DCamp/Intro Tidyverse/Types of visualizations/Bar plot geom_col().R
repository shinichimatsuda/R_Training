library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year and continent in 1952
by_continent <- gapminder %>%
  filter(year == 1952) %>%
  group_by(continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))

# Create a bar plot showing medianGdp by continent
ggplot(data = by_continent, aes(x = continent, y = medianGdpPercap)) +
  geom_col()
