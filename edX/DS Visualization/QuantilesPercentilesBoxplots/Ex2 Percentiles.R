library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]

female_percentiles <- quantile(female, probs = seq(0.1, 0.9, 0.2))
male_percentiles <- quantile(male, probs = seq(0.1, 0.9, 0.2))

df <- data.frame(female_percentiles, male_percentiles)
names(df) = c("female", "male")
