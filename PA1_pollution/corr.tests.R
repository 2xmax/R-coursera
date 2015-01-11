require("RUnit")
source("getData.R")
source("corr.R")
eps = 0.01

checkEquals(numeric(), corr("specdata", 2000))

checkEquals(323, length(corr("specdata")))
checkEquals(c(-0.01895754, 0.04191777, 0.19014198), corr("specdata", 1000), tolerance = eps)
