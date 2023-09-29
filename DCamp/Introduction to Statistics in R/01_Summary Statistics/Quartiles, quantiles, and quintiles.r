# Calculate the quintiles of co2_emission
quantile(food_consumption$co2_emission, probs = c(0, 0.2, 0.4, 0.6, 0.8, 1.0))
      0%      20%      40%      60%      80%     100% 
   0.000    3.540   11.026   25.590   99.978 1712.000 

# Calculate the deciles of co2_emission
quantile(food_consumption$co2_emission,
         probs = seq(0, 1, 0.1))

      0%      10%      20%      30%      40%      50%      60%      70% 
   0.000    0.668    3.540    7.040   11.026   16.530   25.590   44.271 
     80%      90%     100% 
  99.978  203.629 1712.000 
