
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

PI(samples, prob = 0.5)

HPDI(samples, prob = 0.5)