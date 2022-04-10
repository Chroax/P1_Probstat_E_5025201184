rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")

# 2.A
probabilitas = 0.2
nS = 20
nA = 4
peluang = dbinom(nA, nS, probabilitas)

# 2.B
x = rbinom(nA, nS, probabilitas)
hist(x, main = "Binomial Distribution (nS = 20, p = 0.2)", xlab = "Success", ylab = "Probability")

# 2.C
rataan = nS * probabilitas
varian = nS * probabilitas * (1 - probabilitas)