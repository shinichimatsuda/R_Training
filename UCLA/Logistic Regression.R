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
