clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/Week 8"

capture log close 

log using "crime_index.log", replace 
insheet using "crime_data.csv", clear 

drop ranking

drop pop2021

rename country Country

sort Country 

save "crime_index.dta", replace

log close
