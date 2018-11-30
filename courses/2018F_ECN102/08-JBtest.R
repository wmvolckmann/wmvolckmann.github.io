library("stargazer")
library("moments")
library("tseries")

wages <- read.csv("wages.csv")

reg <- lm(wage ~ educ + IQ + sibs + brthord, data = wages)

n = 852
s = skewness(reg$residuals)             ### skew of residuals
k = kurtosis(reg$residuals)             ### kurtosis of residuals

JB = n*(s^2/6 + (k-3)^2/24)             ### test statistic
pv = pchisq(JB, 2, lower.tail=FALSE)    ### p-value

### let R do it for you
jarque.bera.test(reg$residuals)
