library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## Create the mutated dataset.
gapminder_Africa_2010 <- gapminder %>%
  filter(year == 2010 & continent == "Africa" & !is.na(gdp)) %>%
  mutate(dollars_per_day = gdp/population/365)

# now make the scatter plot
gapminder_Africa_2010 %>%
  ggplot(aes(x = dollars_per_day, y = infant_mortality, color = region)) +
  geom_point()
