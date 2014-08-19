corr <- function (directory, threshold = 0){
  files <- dir(directory, full.names=TRUE) #get a list of files in the directory
  numeric_vector <- numeric()
  for (i in files) { #for each file
    data_frame <- read.csv(i) #read it
    nobs <- sum(complete.cases(data_frame)) #find number of complete observations for data frame
    if (nobs > threshold) {#see if it meets a threshold
      correlation <- cor(data_frame$sulfate, data_frame$nitrate, use = "complete.obs") #if so, calculate the correlation
      numeric_vector <- c(numeric_vector, correlation) #and add the correlation to a vector
    }
  }
  return(numeric_vector)
}