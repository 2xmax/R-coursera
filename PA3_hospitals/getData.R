url <- "https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2FProgAssignment3-data.zip"
destFile = "ProgAssignment3-data.zip"

if (!file.exists(destFile)) {
  download.file(url, destFile)
  unzip(destFile)
}