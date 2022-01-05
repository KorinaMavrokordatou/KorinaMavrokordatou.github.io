clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/project"

capture log close 

log using "regression.log", replace 
insheet using "final_regression.csv", clear 

ssc install outreg2

tw (scatter avgannualpolicehomiciderate violentcrimerate1) (lfit avgannualpolicehomiciderate violentcrimerate1), title(“Correlation between violent crime rates and police killings rates in US cities”) xlab(0 5 10 15 20 25) ylab(0 5 10 15) ///
ytitle("Police Killings per 1M Population, 2013-21") xtitle("Violent Crime per 1k Population, 2013-20") //
graph export "graph1.png", replace

reg avgannualpolicehomiciderate violentcrimerate1 
estat hettest
//heteroskedasticity detected
//further analysis could be conducted: eg. weighted regression 

outreg2 using "table1.xls", replace

log close
