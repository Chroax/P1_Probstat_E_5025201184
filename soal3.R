rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")

# 3.A
lamda = 4.5
nA = 6
peluang = dpois(nA, lamda)

# 3.B
set.seed(2)

poisson_data  <- data.frame('data' = rpois(365, lamda))

poisson_data  %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == nA),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Number born per period',
       y = 'Proportion',
       title = '365 simulated births with Poisson Distribution (lambda = 4.5)') +
  theme_bw()
# 3.C

# 3.D
rataan = varian = lamda