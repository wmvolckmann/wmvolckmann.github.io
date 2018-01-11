clear
use "D:\Users\Goatmantis\Downloads\bees.dta" 
cd "D:\Users\Goatmantis\Downloads"
log using dotest.txt, text replace
gen lcols = log(cols)
gen larrests = log(arrests)
reg lcols larrests
log close
