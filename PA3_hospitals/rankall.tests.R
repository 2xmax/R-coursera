require("RUnit")
source("getData.R")
source("rankall.R")

checkException(rankall("INVALID", "heart failure"), "invalid state")
checkException(rankall("TX", "INVALID"), "invalid outcome")

worst = rankall("pneumonia", "worst")
worstest = tail(worst, 1)
checkEquals("WY", as.character(worstest$state))
checkEquals("NORTH BIG HORN HOSPITAL DISTRICT", as.character(worstest$hospital))
checkEquals("ALASKA NATIVE MEDICAL CENTER", as.character(worst[1, ]$hospital))

nth = rankall("pneumonia", 11)
checkEquals("FAIRBANKS MEMORIAL HOSPITAL", as.character(nth[1, ]$hospital))