library("stargazer")
library("lmtest")

wages <- read.csv("wages.csv")

reg <- lm(wage ~ educ + IQ + sibs + brthord, data = wages)

### square residuals
uhatsq = reg$residuals^2  

### regress squared residuals
auxreg <- lm(uhatsq ~ educ + IQ + sibs + brthord, data = wages)  

### calculate R squared for auxiliary uhat^2 regression
RSSuhat = sum(auxreg$residuals^2)
TSSuhat = sum((uhatsq - mean(uhatsq))^2)
Rsquhat = 1 - RSSuhat/TSSuhat

### calculate F-statistic and p-value
F  = (Rsquhat/(4)) / ((1 - Rsquhat)/(847))  
pv = pf(F, 4, 847, lower.tail=FALSE)  

summary(auxreg)