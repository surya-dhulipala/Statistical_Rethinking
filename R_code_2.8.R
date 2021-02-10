setwd("~/Desktop/Statistics Book/Statistical_Rethinking/Chapter_2")

#analytical calculation
W <- 6
L <- 3

curve( dbeta(x, W+1,L+1),from = 0, to = 1)

#quadratic approximation

curve(dnorm(x,0.67,0.16), lty=2, add = TRUE)