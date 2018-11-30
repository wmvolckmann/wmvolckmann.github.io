##### Install packages #####
##### only needed once #####
#install.packages("modeest")
#install.packages("moments")
#install.packages("rio")


##### Load libraries #####
library("modeest")
library("moments")
library("rio")


##### remember to setwd() #####


##### Summary stats #####
donuts <- c(1, 1, 6, 2, 1, 6, 6)  
mean(donuts)
sd(donuts)
mfv(donuts)
min(donuts)
max(donuts)
quantile(donuts, .25, type = 6)
quantile(donuts, .50, type = 6)
quantile(donuts, .75, type = 6)
IQR(donuts, type = 6)
prod(donuts)^(1/length(donuts))   #geometric mean

mysummary <- function(mysummary_arg)
{
  summary_statistics <- c(NROW(mysummary_arg),
                          mean(mysummary_arg),
                          sd(mysummary_arg),
                          mfv(mysummary_arg),
                          min(mysummary_arg),
                          quantile(mysummary_arg, .25, type = 6),
                          quantile(mysummary_arg, .50, type = 6),
                          quantile(mysummary_arg, .75, type = 6),
                          max(mysummary_arg),
                          IQR(mysummary_arg, type=6)
                          )
  
  names(summary_statistics) = c("n",
                                "mean",
                                "sd",
                                "mode",
                                "min",
                                "25%",
                                "50%",
                                "75%",
                                "max",
                                "IRQ"
                                )
  
  return(summary_statistics)
}

mysummary(donuts)

boxplot(donuts,
        main = "Boxplot for Donut Consumption",
        ylab = "Donuts Consumed"
)

donuttable <- table(donuts)
pie(donuttable,
    main = "Donuts Consumed by Grad students",
    labels = c("1 donut (43%)",
              "2 donuts (14%)",
              "6 donuts (43%)"
              )
)
