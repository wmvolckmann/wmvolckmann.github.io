library("stargazer")
wages <- read.csv("wages.csv")

reg1 <- lm(wage ~ educ, data = wages)
stargazer(reg1, type = "text")

reg2 <- lm(wage ~ educ + IQ, data = wages)
stargazer(reg2, type = "text")

reg3 <- lm(wage ~ educ + IQ + urban, data = wages)
stargazer(reg3, type = "text")