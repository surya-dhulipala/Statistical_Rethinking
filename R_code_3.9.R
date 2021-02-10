
setwd("~/Desktop/Statistics Book/Statistical_Rethinking/Chapter_3")

rm(list = ls())

# use grid approximation to generate data
p_grid <- seq (from = 0, to = 1, length.out = 1000)

# Assume prior distribution is normal
prob_p <- rep(1,1000)

# Likelihood of each event occuring
prob_data <- dbinom (6, size = 9, prob = p_grid )

# Calculate posterior based on the prob_data and prior data
posterior <- prob_data * prob_p

posterior <- posterior / sum(posterior)

# Generate Samples from posterior distribution

samples <- sample(p_grid, prob = posterior, size = 1e4, replace = TRUE)

plot(samples)
dens(samples)

# add up posterior probability where p <0.5
sum( posterior[p_grid < 0.5])

# add up sample probability where p <0.5
sum ( samples < 0.5) / 1e4

# add up sample probability where p > 0.5 and p < 0.75
sum ( samples > 0.5 & samples < 0.75) / 1e4