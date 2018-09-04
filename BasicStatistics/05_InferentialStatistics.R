
# Depict a figure.
A <- rnorm(50)
B <- rnorm(50)
C <- A * 0.5 + sqrt(0.75) * B
Feeling <- 10 * A + 50
Socialskill <- 10 * C + 50

plot(Feeling, Socialskill, xlim = c(0,100), ylim = c(0,100))
points(50, 50, cex = 45)
legend(50, 10, legend = "Data from samples", pch = 1)
legend(10, 100, legend = "Population (with no correlation")
