options("digits"=4)


mean = 50.06
sd = 11.27
nobs = 185


### calculate two sided confidence interval ###
myCI <- function(xbar_arg, s_arg, n_arg, alpha_arg)
{
  xbar  <- xbar_arg
  s     <- s_arg
  n     <- n_arg
  alpha <- alpha_arg
  
  t    <- qt( (1 - alpha)/2, n-1, lower.tail = FALSE)
  
  lowerCI <- xbar - (t * s / sqrt(n))
  upperCI <- xbar + (t * s / sqrt(n))
  
  CI <- c(lowerCI, upperCI)
  
  return(CI)
}

### problems 1 and 2 ###
myCI(mean, sd, nobs, .95)
myCI(mean, sd, nobs, .90)



### do a two-sided t test and find p value ###
myttest <- function(xbar_arg, mu0_arg, s_arg, n_arg, alpha_arg)
{
  xbar  <- xbar_arg
  mu0   <- mu0_arg
  s     <- s_arg
  n     <- n_arg
  alpha <- alpha_arg
  
  t <- (xbar - mu0)/(s / sqrt(n))
  
  critvalue <- qt(  (1 - alpha)/2, n-1, lower.tail = FALSE)
  
  if ( abs(t) > critvalue) {
    reject = TRUE
  } else {
    reject= FALSE
  }
  
  pvalue <- 2 * pt( abs(t), 184, lower.tail = FALSE)
  
  
  results <- c(t, critvalue, pvalue, reject)
  names(results) = c("t", "crit", "p-value", "reject")
  
  return(results)
}

### problems 3 and 4 ###
myttest(mean, 52, sd, nobs, .95)
