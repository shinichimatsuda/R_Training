## Estimated proportion of men with 7 feet tall or taller
p <- 1 - pnorm(84, mean = 69, sd = 3)

## Estimated rounded number of men with 7 feet tall or taller in 18-40 yrs old
N <- round(1000000000 * pnorm(84, mean = 69, sd = 3))

10 / N
