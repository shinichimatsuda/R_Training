p <- heights %>% 
  ggplot(aes(height))
## add a layer to p
p +
  geom_histogram()
