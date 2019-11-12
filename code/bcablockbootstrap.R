### bootstraps mean of percentage GDP gap from 1992-04-01 to 2008-01-01 from FRED
### primarily meant to generate BCa confidence intervals and p-values


library('boot')
library('resample')
library('np')


## set random seed, bootstrap reps, significance alpha
set.seed(69)
reps <- 1000
alpha <- 0.05


## find optimal block length and run the bootstrap for mean
blocklength <- b.star(gdpgap$value)[1]
bsresults   <- tsboot(gdpgap$value, mean, reps, l=blocklength, sim="geom")

cat("Sample mean: ", mean(gdpgap$value));cat('\n')
cat("Bootstrap mean: ", mean(bsresults$t));cat('\n')
cat("Block length: ", blocklength);cat('\n')


# calculates crude percentile confidence intervals
CIlow_percentile  <- quantile(bsresults$t, alpha/2)
CIhigh_percentile <- quantile(bsresults$t, 1-alpha/2)
cat(alpha, "Significance Confidence Interval: ", CIlow_percentile,",",CIhigh_percentile);cat('\n')


## calculates and displays bias-corrected confidence intervals
z0 <- sum(bsresults$t <= bsresults$t0)/reps
CIlow_bc   <- quantile(bsresults$t, pnorm(z0 + (z0 + qnorm(alpha/2))))
CIhigh_bc  <- quantile(bsresults$t, pnorm(z0 + (z0 + qnorm(1-alpha/2))))
cat(alpha, "Significance BC Confidence Interval: ", CIlow_bc,",",CIhigh_bc);cat('\n')


# jackknife acceleration factor for BCa 
jkresults <- jackknife(data = gdpgap$value, statistic = mean)
jkmean    <- mean(jkresults$replicates)
num <- sum((jkmean-jkresults$replicates)^3)
den <- 6*sum((jkmean-jkresults$replicates)^2)^(3/2)
a <- num/den


## calculates and displays BCa confidence intervals
z0 <- sum(bsresults$t <= bsresults$t0)/reps
CIlow_bca   <- quantile(bsresults$t, pnorm(z0 + (z0 + qnorm(alpha/2)) / (1 - a*(z0 + qnorm(alpha/2)))))
CIhigh_bca  <- quantile(bsresults$t, pnorm(z0 + (z0 + qnorm(1-alpha/2)) / (1 - a*(z0 + qnorm(1-alpha/2)))))
cat(alpha, "Significance BCa Confidence Interval: ", CIlow_bca,",",CIhigh_bca);cat('\n')


## calculates p-value for two-sided test of H0: mean = 0
for (j in 1:10000){
  alpha  <- 1 - .0001*j
  z0 <- sum(bsresults$t <= bsresults$t0) / reps
  CIlow   <-  quantile(bsresults$t, pnorm(z0 + (z0 + qnorm(alpha/2)) / (1 - a*(z0 + qnorm(alpha/2)))))
  CIhigh  <- quantile(bsresults$t, pnorm(z0 + (z0 + qnorm(1-alpha/2)) / (1 - a*(z0 + qnorm(1-alpha/2)))))
  if (alpha == 0){break}
  if (CIlow < 0 & 0 < CIhigh){break}
}
cat("BCa p-value: ", alpha);cat('\n')