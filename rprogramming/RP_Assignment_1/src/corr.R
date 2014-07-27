corr <- function (directory, threshold = 0){
  files <- dir(directory, full.names=TRUE)
  numeric.vector <- numeric()
  csvs <- data.frame() 
  for (i in 1:332) {
    csv <- read.csv(files[i])
    csvs <- rbind (csvs, csv)
  }
  complete.cases.files <- complete("specdata", 1:332)
  if (complete.cases.files$nobs > threshold) {
    correlation <- cor(csvs$sulfate, csvs$nitrate, use = "complete.obs")
    rbind(numeric.vector, correlation)
  }
  print(numeric.vector)
}