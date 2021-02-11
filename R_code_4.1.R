
rm(list =ls())

pos <- replicate( 1000, sum(runif(16,-1,1)))
plot(density(pos))