library("stargazer")
library("lmtest")

wages <- read.csv("wages.csv")

### unrestricted regression
reg <- lm(wage ~ educ + IQ + sibs + brthord, data = wages)

uhatsq = reg$residuals^2                    ### square residuals

### regress squared residuals
auxreg <- lm(uhatsq ~ educ + IQ + sibs + brthord, data = wages)  

### calculate F-statistic and p-value
Rsquhat = summary(auxreg)$r.squared         ### R-squared for auxiliary
F  = (Rsquhat/(4)) / ((1 - Rsquhat)/(847))  ### F-statistic
pv = pf(F, 4, 847, lower.tail=FALSE)        ### p-value

### be lazy and let R give you the p-value
summary(auxreg)
