corr <- function(directory, threshold = 0) {
  empty <- numeric()
  files.list <- list.files(directory, full.names=TRUE)
  df <- lapply(files.list, read.csv)
  for (i in files.list){
    complete_cases <- complete("specdata", i) # count the number of complete cases in the file
  }
  if (complete_cases > threshold) {# if the number is greater than the threshold
    correlation <- cor(df$sulfate, df$nitrate, use = "complete.obs") # compute the correlation of the sulfate and nitrate columns
    empty <- c(empty, correlation) # append that correlation to the numeric vector
    print (empty)
  }