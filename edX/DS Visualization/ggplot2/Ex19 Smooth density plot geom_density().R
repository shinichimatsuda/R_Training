## add the correct layer using +
heights %>% 
  ggplot(aes(height)) +
  geom_density()
