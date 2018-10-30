## edit this code
murders %>% ggplot(aes(population, total, color = region, label = abb)) +
  geom_label()
