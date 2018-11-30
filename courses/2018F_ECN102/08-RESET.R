library("stargazer")
library("car")
library("lmtest")

wages <- read.csv("wages.csv")

### run original regression
reg <- lm(wage ~ educ + IQ + sibs + brthord, data = wages)

wages$yhatsq = reg$fitted.values^2     ### generate fitted squared
wages$yhatcu = reg$fitted.values^3     ### generate fitted cubed

### run RESET regression
RESETreg <- lm(wage ~ educ + IQ + sibs + brthord + yhatsq + yhatcu,
               data = wages)

RESETRSSur = sum(RESETreg$residuals^2)  ### unrestricted RESET RSS
RESETRSSr  = sum(reg$residuals^2)       ### restricted RESET RSS

### calculate F statistic and p-value
F  = ((RESETRSSr - RESETRSSur)/2) / (RESETRSSur/845)
pv = pf(F, 2, 845, lower.tail=FALSE)

### let R do the restriction testing for you
Hnull <- c("yhatsq=0", "yhatcu=0")      ### null hypothesis
linearHypothesis(RESETreg, Hnull)       ### joint significance test

### let R do the whole damn thing for you
resettest(reg)
