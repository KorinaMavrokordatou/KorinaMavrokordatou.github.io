clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/project"

capture log close 

log using "policebrutality.log", replace 
insheet using "policekillings.csv", clear 

keep state blackpeoplekilled blackpopulation rateblackpeople ratewhitepeople peoplekilled ratehispanicpeople rateasianpeople blackwhitedisparity totalpopulation

sort state

merge 1:1 state using "state_ids.dta"

drop _merge

br 

export delimited using "police_killings_black.csv", replace


log close 
 
