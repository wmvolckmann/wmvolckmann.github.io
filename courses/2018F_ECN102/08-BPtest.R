library("stargazer")
library("lmtest")

wages <- read.csv("wages.csv")

### unrestricted regression
reg <- lm(wage ~ educ + IQ + sibs + brthord, data = wages)

esq = reg$residuals^2                       ### square residuals

### regress squared residuals
auxreg <- lm(esq ~ educ + IQ + sibs + brthord, data = wages)  

### calculate F-statistic and p-value
R2esq = summary(auxreg)$r.squared           ### R-squared for auxiliary
F  = (R2esq/(4)) / ((1 - R2esq)/(847))      ### F-statistic
pv = pf(F, 4, 847, lower.tail=FALSE)        ### p-value

### be lazy and let R give you the p-value
summary(auxreg)
