clear all
set obs 200000
set seed 4444


//standard normal distribution
//symmetric, so expect zero skew
//normal, so expect kurtosis = 3
gen x = rnormal(0,1)
kdensity x, name(normal)		
sum x, detail					


//t distribution with 4 degrees of freedom
//symmetric, so expect zero skew
//fat tails, so expect kurtosis > 3
gen t4 = rt(4)					
twoway (kdensity x) (kdensity t4 if abs(t4) < 5), name(toverlay)
sum t4, detail	


//right-skewed distribution, so expect skew > 0
generate beta16 = rbeta(1,6)	
kdensity beta16, name(beta16)
sum beta16, d


//left-skewed distribution, so expect skew < 0
generate beta61 = rbeta(6,1)
kdensity beta61, name(beta61)
sum beta61, d


//uniform distrubition over -1, 1
//symmetric, so expect zero skew
//uniform doesn't really have tails, so expect kurt < 3
generate unif = runiform(-1,1)	
twoway (hist unif) (kdensity x), name(unifoverlay)
sum unif, d




