library(dplyr)
library(ggplot2)

rm(list = ls())
dev.off(dev.list()["RStudioGD"])
cat("\014")

# 1.A
probabilitas = 0.2
nA = 3
peluang = dgeom(nA, probabilitas)

# 1.B
mean = mean(rgeom(n = 10000, prob = probabilitas) == 3)

# 1.C

# 1.D
x = 0:10
data.frame(x, prob = dgeom(x, probabilitas)) %>%
  mutate(Failures = ifelse(x == 3, 3, "Data lain")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() + 
  geom_text(
    aes(label = round(prob, 2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  )
  labs(title = "Probabilitas X = 3 kegagalan sebelum kesuksesan pertama",
       y = "Probability")

# 1.E
varian = (1-probabilitas)/probabilitas^2
rataan = 1/probabilitas