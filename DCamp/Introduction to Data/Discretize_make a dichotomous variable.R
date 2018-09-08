# Create number_yn column in email50
email50_fortified <- email50 %>%
  mutate(number_yn = case_when(
    number == "none" ~ "no", # if number is "none", make number_yn "no"
    number != "none" ~ "yes"  # if number is not "none", make number_yn "yes"
    )
  )
  
# Visualize number_yn
ggplot(email50_fortified, aes(x = number_yn)) +
  geom_bar()
