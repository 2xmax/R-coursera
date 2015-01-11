require("RUnit")
source("getData.R")
source("rankhospital.R")

checkException(rankhospital("INVALID", "heart failure", 4), "invalid state")
checkException(rankhospital("TX", "INVALID", 4), "invalid outcome")

checkEquals("DETAR HOSPITAL NAVARRO", rankhospital("TX", "heart failure", 4))

checkEquals("DETAR HOSPITAL NAVARRO", rankhospital("TX", "heart failure", 4))
checkEquals("HARFORD MEMORIAL HOSPITAL", rankhospital("MD", "heart attack", "worst"))
checkTrue(is.na(rankhospital("MN", "heart attack", 5000)))