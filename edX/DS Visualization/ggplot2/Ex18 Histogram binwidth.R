p <- heights %>% 
  ggplot(aes(height))
## add the geom_histogram layer but with the requested argument
p +
  geom_histogram(binwidth = 1)
