# fit y predicted by x with data.frame dat using the poisson family
poissonOut <- glm(count ~ time, data = dat, family = "poisson")

# print the output
print(poissonOut)
