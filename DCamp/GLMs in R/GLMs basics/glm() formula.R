# Fit a lm()
lm(formula = weight ~ Diet, data = ChickWeightEnd)

# Fit a glm()
glm( formula = weight ~ Diet , data = ChickWeightEnd, family = 'gaussian')
