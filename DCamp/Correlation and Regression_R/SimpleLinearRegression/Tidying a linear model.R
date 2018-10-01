# Load broom
library(broom)

# Create bdims_tidy
bdims_tidy <- augment(mod) 

# Glimpse the resulting data frame
glimpse(bdims_tidy)
