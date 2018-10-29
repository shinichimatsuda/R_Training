x <- Galton$child
error_avg <- function(k){
  x[1] <- k
  return(mean(x))
}

error_avg(10000)
error_avg(-10000)
