corr <- function (directory, threshold = 0){
  files <- dir(directory, full.names=TRUE)
  correlations <- numeric()
  for (file in files) {
    if (doesFileMeetThreshold(file)) {
      correlation <- calcCorrelationForFile(file)
      append(correlations, correlation)
    }
  }
  return (correlations)

  
doesFileMeetThreshold <- function (file, threshold){
  sumcc <- sum(complete.cases(file))
  if (sumcc > threshold){
    return TRUE
  } else {
    return FALSE
  }
}

calcCorrelationForFile <- function (file)
  return correlationValue  