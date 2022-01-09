clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/project"

capture log close 

insheet using "mental_health_rankings_us.csv", clear 

drop youthmentalhealthranking

save "state_ids.dta", replace 


