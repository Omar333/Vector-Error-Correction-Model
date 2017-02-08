library(urca)

data("Raotbl3")
attach(Raotbl3)

lc <- ts(lc, start=c(1966,4), end=c(1991,2),frequency=4)

lc.ct <- ur.df(lc,lags=3,type='trend')
summary(lc.ct)

plot(lc.ct)

lc.ct@cval
lc.ct@teststat



