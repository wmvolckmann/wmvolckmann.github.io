clear all

//monthly FRED inflation data, datestr is the date string
use "https://github.com/wmvolckmann/wmvolckmann.github.io/raw/master/code/inflationdata.dta"

//converts datastr into a raw number (datneum),
//then the number into monthly form (dateq)
//use qofd for quarterly data
generate datenum = date(datestr, "YMD")
generate dateq = mofd(daten)

//sets dateq as the (monthly) time variable
tsset dateq, monthly

tsline inflation
