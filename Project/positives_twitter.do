clear all
set more off 

cd "/Users/korinamavrokordatou/Desktop/BSc Econ- Year 3/Data Science/project"

capture log close 

insheet using "sentiment_data.csv", clear 

su sentiment
drop location 

generate positive=1 if sentiment>0 
replace positive=. if sentiment<0

generate negative=1 if sentiment<0
replace negative=. if sentiment>0

su positive
su sentiment if positive==1
su sentiment if negative==1

net install http://www.stata.com/users/kcrow/tab2xl, replace
net install http://www.stata.com/users/kcrow/tab2docx

ta sentiment
su sentiment
desc sentiment

drop if sentiment==0
tab2xl sentiment using Sentiment_analysis.xls, col(1) row(1) replace 

keep if positive==1
tab2xl sentiment using Positive_score.xls, col(1) row(1) replace

log close 

