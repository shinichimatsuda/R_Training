library(dslabs)
data(heights)
tab <- table(heights$height)

sum(tab == 1)
