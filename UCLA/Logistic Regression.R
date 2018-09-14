library(aod)
library(ggplot2)

## Load the data.
mydata <- read.csv("binary.csv")

## View first few rows of data.
head(mydata)

## Summary data.
summary(mydata)

## Show SD of variables.
sapply(mydata, sd)

## Two way contingency table of categorical variables.
xtabs(~admit + rank, data = mydata)

## Using the logt model.
## Rank should be considered as a categorical variable.
mydata$rank <- factor(mydata$rank)
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")

## Show the result of logistic regression using below command,
## because R does not show the results automatically.
summary(mylogit)

## Confidence intervals (CIs) using profiled log-likelihood
confint(mylogit)

## CIs using standard errors.
confint.default(mylogit)

## Performing wald test.
wald.test(b = coef(mylogit), Sigma = vcov(mylogit), Terms = 4:6)

## Show odds ratios only.
exp(coef(mylogit))

## odds ratios and 95% CIs.
results <- exp(cbind(OR = coef(mylogit), confint(mylogit)))
print(results)

##### Computing predicted probabilities #####
## Create and view the data frame.
newdata1 <- with(mydata, data.frame(gre = mean(gre), gpa = mean(gpa), rank = factor(1:4)))
print(newdata1)

newdata1$rankP <- predict(mylogit, newdata = newdata1, type = "response")
newdata1

newdata2 <- with(mydata, data.frame(gre = rep(seq(from = 200, to = 800, length.out = 100), 4), gpa = mean(gpa), rank = factor(rep(1:4, each = 100))))

newdata3 <- cbind(newdata2, predict(mylogit, newdata = newdata2, type = "link", se = TRUE))
newdata3 <- within(newdata3, {
  PredictedProb <- plogis(fit)
  LL <- plogis(fit - (1.96 * se.fit))
  UL <- plogis(fit + (1.96 * se.fit))
})

## view first few rows of the final dataset.
head(newdata3)

## Depict a graph to look at predicted probability visually.
ggplot(newdata3, aes(x = gre, y = PredictedProb)) + geom_ribbon(aes(ymin = LL, ymax = UL, fill = rank), alpha = 0.2) + geom_line(aes(colour = rank), size = 1)

## Compute the difference in deviance for the two models.
with(mylogit, null.deviance - deviance)

with(mylogit, df.null - df.residual)

with(mylogit, pchisq(null.deviance - deviance, df.null - df.residual, lower.tail = FALSE))

## Log likelihood ratio test
logLik(mylogit)
