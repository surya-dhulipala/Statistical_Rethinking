
rm(list =ls())

big <- replicate(10000, prod( 1 + runif(12,0,0.5)))

small <- replicate(10000, prod( 1 + runif(12,0,0.01)))

log.big <- replicate(10000, log(prod(1+ runif(12,0,0.5))))

dens( big, norm.comp = TRUE)
dens( small, norm.comp = TRUE)
dens( log.big, norm.comp = TRUE)



