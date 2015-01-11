require("RUnit")
source("getData.R")
source("complete.R")
eps = 0.01

testCase <- function(monitorIds, expectedNobs){
  ret = complete("specdata", monitorIds)
  checkEquals(monitorIds, ret$id)
  checkEquals(expectedNobs, ret$nobs)
}

testCase(numeric(), numeric())

# https://d396qusza40orc.cloudfront.net/rprog%2Fdoc%2Fcomplete-demo.html
testCase(1, 117)
testCase(c(2, 4, 8, 10, 12), c(1041,474, 192, 148, 96))
testCase(30:25, c(932,711, 475, 338, 586, 463))
testCase(3, 243)