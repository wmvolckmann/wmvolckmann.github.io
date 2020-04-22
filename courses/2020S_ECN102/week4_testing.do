clear all
cls

sysuse auto
describe


* friend insists that average weight of automobiles in 1978 was 3200 lbs

sum weight

* note that n = 74 observations
* looks like the sample mean might be in the ballpark of 3200? maybe? hard to
* say, so let's formally test the claim
* null hypothesis (the claim): weight = 3200
* alternative hypothesis: weight != 3200


********************
* p-value approach *
********************
ttest weight = 3200

* p-value is 0.0494, found in ttest output
* reject the claim at 10% and 5% significance, but not at 1% significance


***************************
* critical value approach *
***************************
* t-statistic is -1.998, found in ttest output

di invttail(74-1, 0.10/2)
* |-1.998| > 1.666, reject the null at 10% significance

di invttail(74-1, 0.05/2)
* |-1.998| > 1.993, reject the null at 5% significance

di invttail(74-1, 0.01/2)
* |-1.998| < 2.6449, fail to reject the null at 1% significance


********************************
* confidence interval approach *
********************************
mean weight, level(90)
* 90% confidence interval does not contain 3200, reject null at 10% significance

mean weight, level(95)
* 95% confidence interval does not contain 3200, reject null at 5% significance

mean weight, level(99)
* 99% confidence interval does contain 3200, fail to reject null at 1% significance


* So conclusions are the same regardless of which method we use to test. The
* benefit of the p-value approach is that we can compare it to any significance
* level very easily, whereas we have to calculate different critical values 
* or different confidence intervals for every significance level if we use the
* other approaches.