library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]

mean(x > 69 & x <= 72)
