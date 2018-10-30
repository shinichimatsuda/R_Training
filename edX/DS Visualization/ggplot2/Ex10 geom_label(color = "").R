murders %>% ggplot(aes(population, total,label= abb)) +
  geom_label(color = "blue")
