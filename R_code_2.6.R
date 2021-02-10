setwd("~/Desktop/Statistics Book/Statistical_Rethinking/Chapter_2")

rm(list =ls())

options(digits=2)

library(rethinking)

globe.qa <- quap(
  alist(
    W ~ dbinom( W+L, p), #binomial likelihood
    p ~ dunif(0,1) # uniform prior
  ), 
  data = list(W = 6, L= 3))

# display summary of quadratic approximation
precis(globe.qa, digits = 4)
