clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/project"

capture log close 

insheet using "frommaster.csv", clear 

drop population engineers hurricanes

drop if state=="Puerto Rico"

sort state 
save "state_ids.dta", replace 


