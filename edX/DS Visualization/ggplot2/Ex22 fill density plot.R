heights %>%
  ggplot(aes(x = height, fill = sex)) +
  geom_density(alpha = 0.2)
