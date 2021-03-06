rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")  

# 6.A
n <- 100
m <- 50
std.deviasi <- 8
set.seed(100)
random <- rnorm(100)
rata.rata <- mean(random)
x1 <- floor(rata.rata)
x2 <- ceiling(rata.rata)

z1 <- (x1 - m) / std.deviasi
z2 <- (x2 - m) / std.deviasi

rnorm(n = 100, mean = m, sd = std.deviasi)
plot(rnorm(n = 100, mean = m, sd = std.deviasi))

# 6.B
hist(rnorm(n = 100, mean = m, sd = std.deviasi), xlab="x", ylab="y" ,breaks = 50,
     main = "5025201184_Cahyadi_Probstat_E_Histogram")

# 6.C
varians <- std.deviasi ** 2
