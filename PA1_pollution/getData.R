url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip"
destFile = "specdata.zip"

if (!file.exists(destFile)) {
  download.file(url, destFile)
  unzip(destFile)
}