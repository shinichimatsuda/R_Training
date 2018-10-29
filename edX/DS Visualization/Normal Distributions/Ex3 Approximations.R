library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
exact <- mean(x > 79 & x <= 81)

approx <- pnorm(81, mean = mean(x), sd = sd(x)) - pnorm(79, mean = mean(x), sd = sd(x))

exact/approx
