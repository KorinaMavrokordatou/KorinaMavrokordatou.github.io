clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/Week 8"

capture log close 

log using "ef_index.log", replace 
insheet using "EF_index.csv", clear

keep if year==2013

sort country

rename country Country 
rename efindex EF_index 
drop year


save "ef_index.dta", replace

log close
