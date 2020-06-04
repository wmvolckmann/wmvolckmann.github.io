clear all
sysuse auto

** We're going to explain price of automobiles using mileage, headroom, weight,
** length, turning ability, displacement (engine size), and gear ratio (speed).

reg price mpg headroom weight length turn displacement gear_ratio, vce(robust)

** By default Stata will test for overall significance. That is,
** H0: all regressor betas are zero
** Ha: at least one regressor beta is not zero

** Stata output shows a p-value of Prob > F = 0.0000.
** So we reject the null and conclude that at least one beta is nonzero.
** In words, we conclude that the combination of regressors does explain 
** price at any conventional significance level.

** We could also compare the F-statistic of F(7,66) = 6.58 to the critical
** value. Find the critical value using the invFtail command.

di invFtail(7,66,0.05)

** This gives a critical value of 2.1518392. The F-statistic exceeds the
** critical value, so we reach the same conclusion. Note that the number
** 7 is the number of regressors being tested, and 66 is the number of
** observations minus the number of things being estimated (74 - 8).

** Notice that headroom and displacement are both individually statistically
** insignificant at 5%. In words, headroom and displacement don't explain price
** when considered in isolation at 5% significance. It is possible that they 
** do explain price when their explanatory power is combined, however.
** Let's test that. 

test headroom displacement

** H0: the beta for headroom and the beta for displacement are both zero
** Ha: the beta for headroom or the beta for displacement is nonzero

** This gives a p-value of Prob > F = 0.0455. So even though headroom and
** displacement have no explanatory power individually at 5% significance, they 
** have combined (i.e. joint) explanatory power at 5% significance. 

** We could also compare the F-statistic of F(2,66) = 3.24 to the critical
** value. Find the critical value using the invFtail command.

di invFtail(2,66,0.05)

** This gives a critical value of 3.1359179. The F-statistic exceeds the
** critical value, so we reach the same conclusion. Note that the number
** 2 is the number of regressors being tested, and 66 is the number of
** observations minus the number of things being estimated (74 - 8).