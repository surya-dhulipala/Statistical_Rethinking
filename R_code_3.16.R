
setwd("~/Desktop/Statistics Book/Statistical_Rethinking/Chapter_3")

rm(list = ls())

# use grid approximation to generate data
p_grid <- seq (from = 0, to = 1, length.out = 1000)

# Assume prior distribution is normal
prior <- rep(1,1000)

# Likelihood of each event occurring
likelihood <- dbinom (3, size = 3, prob = p_grid )

# Calculate posterior based on the prob_data and prior data
posterior <- likelihood * prior

posterior <- posterior / sum(posterior)

# Generate Samples from posterior distribution

samples <- sample(p_grid, prob = posterior, size = 1e4, replace = TRUE)

plot(samples)
dens(samples)

# Percentile interval not very useful as it is omitting p = 1 (highly likely value)
PI(samples, prob = 0.5)

# Highest Possible Density Interval containing specified mass
HPDI(samples, prob = 0.5)


# Calculate maximum  a posteriori (MAP) estimate using the posterior

p_grid[which.max(posterior)]

# Caluclate MAP from sampls

chainmode( samples, adj = 0.01)


mean (samples)
median(samples)