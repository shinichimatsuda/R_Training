# Calculate probability of picking a deal with each product
amir_deals %>%
  count(product) %>%
  mutate(prob = n / sum(n))

     product  n       prob
1  Product A 23 0.12921348
2  Product B 62 0.34831461
3  Product C 15 0.08426966
4  Product D 40 0.22471910
5  Product E  5 0.02808989
6  Product F 11 0.06179775
7  Product G  2 0.01123596
8  Product H  8 0.04494382
9  Product I  7 0.03932584
10 Product J  2 0.01123596
11 Product N  3 0.01685393
