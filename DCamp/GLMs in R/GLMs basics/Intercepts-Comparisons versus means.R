# Fit a glm() that estimates the difference between players
summary(glm(goal ~ player, data = scores, family = "poisson"))

# Fit a glm() that estimates an intercept for each player 
summary(glm(goal ~ player -1, data = scores, family = "poisson"))
