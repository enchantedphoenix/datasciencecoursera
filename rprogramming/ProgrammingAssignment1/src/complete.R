complete <- function(directory, id = 1:332) {
  files <- dir(directory, full.names=TRUE)
  cc <- data.frame()
  for (i in id) {
    data <- read.csv(files[i])
    nobs <- sum(complete.cases(data))
    cctemp <- cbind(i,nobs)
    cc <- rbind(cc,cctemp)
  }
  colnames(cc) <- c("id","nobs")
  cc
}