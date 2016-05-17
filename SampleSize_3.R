# You're interested in looking at how many days in the week
# students drink alcohol, and need to know what kind of sample size to use.
# You know that to find this out, you need a Z-score,
# a margin of error and a standard deviation.
# In the last exercise you established an estimated mean of 3.5,
# and standard deviation of 1.25.
# You want to calculate a confidence interval of 95%,
# with a margin of error of 0.2.
# Let's input these values into our equation to estimate our required sample size!
# Remember, our formula for sample size is
# the population standard deviation squared,
# multiplied by the Z-score squared, divided by the margin of error squared.
# You know what Z-score to use for 95% confidence by know, don't you?

## my answer

# Assign the standard deviation squared to new object "ss"
ss <- 1.25^2
# Assign the value of the Z-score squared to new object "zs"
zs <- 1.96^2
# Assign the value of the margin of error squared to the new object "ms"
ms <- 0.2^2
# Calculate the neccessary sample size
ssize <- (ss * zs) / ms
ssize