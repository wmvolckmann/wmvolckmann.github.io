### read in data directly from the Internets
cats = read.csv(url("http://www.wimivo.com/courses/2020Su_ECN102/cats.csv"))

### create separate vector for male and female cats
### remove missing observations from female cats
female = na.omit(cats$female)
male = cats$male

### show summary statistics for female cats
mean(female)
var(female)
length(female)

### show summary statistics for male cats
mean(male)
var(male)
length(male)


### difference of variances test
qf(1 - 0.05, 96, 46)
pf(2.91, 96, 46, lower.tail = FALSE)
var.test(male, female, alternative = "greater")


### difference of means test, assuming unequal variances
qt(1 - 0.05/2, 97 + 47 - 2)
2*pt(8.71, 97 + 47 - 2, lower.tail = FALSE)
t.test(male, female, var.equal = FALSE)