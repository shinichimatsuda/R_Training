# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000


# Compute average murder rate and store in avg using `mean` 
avg <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
sum(murder_rate < avg)
