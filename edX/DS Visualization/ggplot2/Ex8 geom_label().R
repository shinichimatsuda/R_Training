library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)
## edit the next line to add the label
murders %>% ggplot(aes(population, total,label = abb)) +
  geom_point() +
  geom_label()
