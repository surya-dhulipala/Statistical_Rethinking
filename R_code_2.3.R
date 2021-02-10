#define grid
p_grid <- seq( from=0, to=1, length.out=20)

#define prior
prior <- rep(1,20)

#compute likelihood at each value in the grid
likelihood <- dbinom(6, size = 9, prob = p_grid)

#compute product of likelihood and prior
unstd.posterior <- likelihood * prior

# standardize the posterior, so it sums to 1
posterior <- unstd.posterior/ sum(unstd.posterior)