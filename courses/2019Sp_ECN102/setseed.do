clear all


// If we generate observations without setting a seed,
// then we will get different numbers every time.


set obs 5
gen t = round(runiform(0,20))
gen u = round(runiform(0,20))
gen v = round(runiform(0,20))

list t u v 


// However, if we generate observations after setting 
// a seed, then we will get the same numbers every time.


set seed 4444
gen w = round(runiform(0,20))

set seed 4444
gen x = round(runiform(0,20))

list w x 


// The number 4444 has no meaning beyond "this is the
// unique identifier that was used to generate this 
// unique set of random numbers." If we choose another
// seed, we will get a different batch of numbers, but 
// that seed will still generate its own set of unique 
// numbers every time.


set seed 3333
gen y = round(runiform(0,20))

set seed 3333
gen z = round(runiform(0,20))

list y z


// For our purposes, when we all set the same seed
// it ensures that all of our results are exactly 
// the same (e.g. the same mean and standard deviation),
// because we're all generating the same numbers. This
// makes it a lot easier to identify when a mistaken has 
// been made because when we're all using the same numbers,
// results should be *exactly* replicable. 
