# Here is an example of function that adds numbers from 1 to n
example_func <- function(n){
    x <- 1:n
    sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n that with argument n and returns of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x <- (1:n)^2
  sum(x)
}

# Report the value of the sum when n=10
compute_s_n(10)
