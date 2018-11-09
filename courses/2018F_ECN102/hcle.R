library("rio")
library("stargazer")

hcle <- import("hcle.csv")

### linear model
linreg <- lm(hcle$lifeexpect ~ hcle$hcspending)
stargazer(linreg, type = "text")

### linear-log model
hcle$loghcsp = log(hcle$hcspending)                  
linlogreg <- lm(hcle$lifeexpect ~ hcle$loghcsp)
stargazer(linlogreg, type = "text")

