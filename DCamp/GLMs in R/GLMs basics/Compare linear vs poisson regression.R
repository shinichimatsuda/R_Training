# Fit a glm with count predicted by time using data.frame dat and gaussian family
lmOut <- glm(count ~ time, data = dat, family = "gaussian")

summary(lmOut)
summary(poissonOut)
