library(dplyr)
library(ggplot2)
library(dslabs)
data("murders")

murders %>% mutate(rate = total/population*100000)

murders %>%
  mutate(rate = total/population*100000) %>%
  mutate(region = reorder(region, rate, FUN = median)) %>%
  group_by(region) %>%
  ggplot(aes(region, rate)) +
  geom_boxplot() +
  geom_point()
