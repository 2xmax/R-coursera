require("RUnit")
source("getData.R")
source("pollutantmean.R")
eps = 0.01

checkEquals(NaN, pollutantmean("specdata", "sulfate", numeric()))

# https://d396qusza40orc.cloudfront.net/rprog%2Fdoc%2Fpollutantmean-demo.html
checkEquals(4.064, pollutantmean("specdata", "sulfate", 1:10), tolerance = eps)
checkEquals(1.706, pollutantmean("specdata", "nitrate", 70:72), tolerance = eps)
checkEquals(1.281, pollutantmean("specdata", "nitrate", 23), tolerance = eps)