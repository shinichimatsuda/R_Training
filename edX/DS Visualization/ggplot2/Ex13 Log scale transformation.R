p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) + geom_label()
## add layers to p here
p +
  scale_x_log10() +
  scale_y_log10()
