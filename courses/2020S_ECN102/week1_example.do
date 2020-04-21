*** close any logs that might already be open to avoid errors
capture log close

*** clear everything else out of Stata
clear all

*** starts log; change the directory below to that of your liking
cd "D:\Users\Me\Documents"
log using "week1example.log", text replace

*** create a t(10) variable called tdist with 1000 observations
*** set seed ensures Stata generates same tdist every time dofile is run
set obs 1000
set seed 4444
generate tdist = rt(7)

*** basic summary statistics
sum tdist

*** detailed summary statistics
sum tdist, detail

*** create histogram with bin width 0.25, save to directory as png file
*** unique name declared so next graphic won't erase this one
hist tdist, width(0.25) name(thist)
graph export thist.png, replace

*** create smoothed histogram, save as png file
kdensity tdist, name(tkdensity)
graph export tkdensity.png, replace

*** superimpose smoothed histogram over normal histogram, save as png file
twoway (hist tdist, width(0.25)) (kdensity tdist), name(tboth)
graph export tboth.png, replace

*** create box and whisker plot, save as png file
graph box tdist, name(tbox)
graph export tbox.png, replace

*** close log, now saved in directory
log close