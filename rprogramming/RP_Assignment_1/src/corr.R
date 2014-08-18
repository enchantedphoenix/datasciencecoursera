corr <- function (directory, threshold = 0){
  files <- dir(directory, full.names=TRUE)
  numeric.vector <- numeric()
  csvs <- data.frame() 
  for (i in 1:332) {
    csv <- read.csv(files[i])
    csvs <- rbind (csvs, csv)
  }
  complete.cases.files <- complete("specdata", 1:332)
  for (nobs in complete.cases.files["nobs"]) {
    nobs.above.threshold <- nobs > threshold
      if (nobs.above.threshold[ ] == TRUE) {
        correlation <- cor(csvs$sulfate, csvs$nitrate, use = "complete.obs")
        rbind(numeric.vector, correlation)
      }
  }
  print(numeric.vector)
}