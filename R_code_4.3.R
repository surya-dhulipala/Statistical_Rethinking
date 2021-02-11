
rm(list =ls())

growth <- replicate(10000, prod( 1 + runif(12,0,0.1)))
dens( growth, norm.comp = TRUE)

