# Table of the number variable
table(email50_big$number)

# Drop levels
email50_big$number <- droplevels(email50_big$number)

# Another table of the number variable
table(email50_big$number)
