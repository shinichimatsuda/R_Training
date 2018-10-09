# Load packages
library(ggplot2)
library(NHANES)

# What are the variables in the NHANES dataset?
colnames(NHANES)

# Create bar plot for Home Ownership by Gender
ggplot(data = NHANES, aes(x = Gender, fill = HomeOwn)) + 
# Set the position to fill
geom_bar(position = "fill") +
ylab("Relative frequencies")
  
# Density plot of SleepHrsNight colored by SleepTrouble
ggplot(data = NHANES, aes(x = SleepHrsNight, color = SleepTrouble)) + 
  # Adjust by 2
  geom_density(adjust = 2) + 
  # Facet by HealthGen
  facet_wrap(~ HealthGen)
