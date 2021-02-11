rm(list=ls())
library(rethinking)
data("Howell1")
d <- Howell1
precis(d$height)
d2 <- d[d$age >= 18, ]
precis(d2$height)
dens(d2$height)
