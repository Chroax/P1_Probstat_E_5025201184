rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")

# 4.A
x = 2
df = 10
density = dchisq(x, df, ncp = 0, log = FALSE)

# 4.B
x <- rchisq(100, df)
hist(x, freq = FALSE, xlim = c(0,31), ylim = c(0,0.2), main="Chisquare Distribution")

curve(dchisq(x, df), from = 0, to = 30, n = 100, col = "blue", lwd = 2, add = TRUE)

# 4.C
rataan = df
varian = df * 2