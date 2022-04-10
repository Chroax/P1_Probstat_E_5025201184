rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")

rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")

# 5.A
x = 3
exp = dexp(x, rate = 1, log = FALSE)

# 5.B
par(mfrow = c(2,2))
set.seed(1)
hist(rexp(10, x), main = "Exponential Distribution")
hist(rexp(100,x), main = "Exponential Distribution")
hist(rexp(1000, x), main = "Exponential Distribution")
hist(rexp(10000,x), main = "Exponential Distribution")

# 5.C
simnum <- 100
n = 100
simdata <- matrix(rexp(simnum * n, x), simnum)
sim_rowmean <- apply(simdata, 1, mean)
sim_var <- var(sim_rowmean)