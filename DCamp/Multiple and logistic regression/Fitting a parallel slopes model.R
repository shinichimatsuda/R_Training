# Explore the data
glimpse(mario_kart)

# fit parallel slopes
lm(formula = totalPr ~ wheels + cond, data = mario_kart)
