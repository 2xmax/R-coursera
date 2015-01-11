require("RUnit")
source("getData.R")
source("best.R")

checkException(best("INVALID", "heart failure"), "invalid state")
checkException(best("TX", "INVALID"), "invalid outcome")

checkEquals("CYPRESS FAIRBANKS MEDICAL CENTER", best("TX", "heart attack"))
checkEquals("FORT DUNCAN MEDICAL CENTER", best("TX", "heart failure"))
checkEquals("JOHNS HOPKINS HOSPITAL, THE", best("MD", "heart attack"))
checkEquals("GREATER BALTIMORE MEDICAL CENTER", best("MD", "pneumonia"))