/*  make sure to install freduse before running this do file; see handout */

clear			

freduse UNRATE

generate month = mofd(daten)
tsset month, monthly

tssmooth ma MAUNRATE = UNRATE, window(11, 1, 0)
tsline MAUNRATE

sum UNRATE, detail
scalar xbar = r(mean)
scalar n = r(N)
scalar s = r(sd)

scalar alpha = 0.05
scalar lconf = xbar - invttail(n-1, alpha/2) * s/sqrt(n)
scalar uconf = xbar + invttail(n-1, alpha/2) * s/sqrt(n)

scalar list
mean UNRATE
