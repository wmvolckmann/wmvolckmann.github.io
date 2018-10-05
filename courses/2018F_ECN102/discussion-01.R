##### Install packages #####
##### only needed once #####
#install.packages("modeest")
#install.packages("moments")
#install.packages("stargazer")
#install.packages("rio")


##### Load libraries #####
library("modeest")
library("moments")
library("stargazer")
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


##### Perkins loans #####
perkins <- import("http://www.wimivo.com/courses/2018F_ECN102/1516PerkinsCDR.xlsx")
str(perkins, vec.len = 1)
mysummary(perkins$default_rate)
stargazer(perkins, type = "text")

subset(perkins, default_rate == 100)
davis_name <- c(grep("Davis", perkins$institution))
perkins[davis_name, c(1,2,5)]

skewness(perkins$default_rate)
kurtosis(perkins$default_rate)

png(file = "default_histogram.png")     #saved to your working directory
hist(perkins$default_rate,
     xlab = "Default Rate",
     main = "Perkins Loan Default Rate Histogram"
     )
dev.off() 

png(file = "default_density.png")       #saved to your working directory
plot(density(perkins$default_rate),
     xlab = "Default Rate",
     main = "Perkins Loan Default Rate Density"
     )
dev.off() 


##### Toilets! #####
nytoilets <- import("http://www.wimivo.com/courses/2018F_ECN102/nytoilets.csv")
str(nytoilets, vec.len = 1)

boroughtoiletnum <- table(nytoilets$Borough)
boroughtoiletnum

pie(boroughtoiletnum)

png(file = "toilet_pie.png")    #saved to your working directory
pie(boroughtoiletnum,
    labels = boroughtoiletnum,
    col = gray.colors(length(boroughtoiletnum)),
    main = "Public toilets in each NYC Borough"
    )
legend("topright", 
       names(boroughtoiletnum),
       fill = gray.colors(length(boroughtoiletnum))
      )
dev.off() 

png(file = "toilet_bar.png")     #saved to your working directory
barplot(boroughtoiletnum,
        width=1,
        main = "Public toilets in each NYC Borough"
        )
dev.off()
