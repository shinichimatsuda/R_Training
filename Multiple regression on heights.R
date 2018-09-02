# Generate a sample dataset.

set.seed(1234)
intercept <- 102.385888
fathercoeff <- 0.316514
mothercoeff <- 0.021370
father <- rnorm(n = 19, mean = 166.84211, sd = 5.90916)
mother <- rnorm(n = 19, mean = 155.94737, sd = 4.63649)
residual <- rnorm(n = 19, mean = 0, sd = 2.15664)
daughter <- intercept + fathercoeff*father + mothercoeff*mother + residual
multiplereg <- cbind(daughter, father, mother)

# Check the head of generated dataset
print(head(multiplereg))

# Applying a linear model
result_multiplereg <- lm(daughter ~ father + mother)
summary(result_multiplereg)

# Removing the mother variable from the model (simple linear regression)
result_simplereg <- update(result_multiplereg, . ~ . - mother)
summary(result_simplereg)

## As you can see, R^2 score was lower in simple linear model than multiple linear model.

# Draw the regression line.
plot (father, daughter)
abline(result_simplereg)
