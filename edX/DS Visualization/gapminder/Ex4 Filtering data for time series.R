library(dplyr)
library(dslabs)
data(gapminder)

tab <- gapminder %>%
  filter((year >= 1960 & year <= 2010) & (country == "Vietnam" | country == "United States"))
