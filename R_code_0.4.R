library(RCurl)

#Load the data:
#car breaking distances in feet paired with speeds in km/h
x <- getURL("https://github.com/fehiepsi/rethinking-numpyro/blob/master/data/cars.csv")
cars <- read.csv(text = x)
data(cars)

# fit a linear regression of distance on speed
m<-lm(dist~speed, data = cars)

#estimated coefficients from the model
coef(m)

#plot residuals against speed
plot( resid(m) ~ speed , data = cars )
