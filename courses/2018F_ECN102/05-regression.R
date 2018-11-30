library("stargazer")

y <- c(2, 3, 4)
x <- c(0, 3, 3)

regression <- lm(y ~ x)
stargazer(regression, type = "text")
