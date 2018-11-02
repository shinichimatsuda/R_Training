library(dplyr)
library(dslabs)
data(gapminder)

daydollars <- gapminder %>%
  filter(year == 2010, continent == "Africa", !is.na(gdp)) %>%
  mutate(dollars_per_day = gdp/population/365)
