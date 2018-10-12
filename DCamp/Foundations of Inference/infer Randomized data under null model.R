library(dplyr)
library(ggplot2)
library(NHANES)
library(infer)

# Perform 10 permutations
homeown_perm <- homes %>%
  specify(HomeOwn ~ Gender, success = "Own") %>%
  hypothesize(null = "independence") %>% 
  generate(reps = 10, type = "permute") 


# Print results to console
homeown_perm
