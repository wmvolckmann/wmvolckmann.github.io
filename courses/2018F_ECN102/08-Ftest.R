library("stargazer")
library("car")

wages <- read.csv("wages.csv")

regur <- lm(wage ~ educ + IQ + sibs + brthord, data = wages)
regr  <- lm(wage ~ educ + IQ, data = wages)

RSSur = sum(regur$residuals^2)            ### unrestricted RSS
RSSr  = sum(regr$residuals^2)             ### restricted RSS

F  = ((RSSr - RSSur)/2) / (RSSur/(847))   ### F-statistic
pv = pf(F, 2, 847, lower.tail=FALSE)      ### p-value

Hnull <- c("sibs=0", "brthord=0")         ### null hypothesis
linearHypothesis(regur, Hnull)            ### joint significance test
