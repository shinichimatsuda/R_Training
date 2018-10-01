# Print bdims_summary
print(bdims_summary)

# Add slope and intercept
bdims_summary %>%
  mutate(slope = r * (sd_wgt/sd_hgt),
         intercept = mean_wgt - slope * mean_hgt)
