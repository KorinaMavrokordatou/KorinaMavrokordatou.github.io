clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/Week 8"

capture log close 

log using "merging.log", replace 

use "crime_index.dta", clear 

merge 1:1 Country using ef_index.dta

tab _merge

keep if _merge==3 
br 

drop _merge 

save "merged_data.dta", replace 

log close 


