/* try playing around with different lags in the x[_n-1] term to see how the command works more clearly, e.g. x[_n-4] */

clear
set seed 4444
set obs 10
generate x = round(runiform(0,10))
generate y = x[_n-1]
list
