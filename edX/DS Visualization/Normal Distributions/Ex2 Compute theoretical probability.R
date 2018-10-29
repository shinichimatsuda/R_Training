library(dslabs)
data(heights)
x <- heights$height[heights$sex=="Male"]
avg <- mean(x)
stdev <- sd(x)

pnorm(72, mean = avg, sd = stdev) - pnorm(69, mean = avg, sd = stdev)
