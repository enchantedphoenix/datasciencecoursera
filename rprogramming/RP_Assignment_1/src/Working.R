corr <- function(directory, threshold = 0) {
  files.list <- list.files(directory, full.names=TRUE) # create a list of all the files
  df <- lapply(files.list, read.csv) # create an empty numeric vector, # loop through all of the files, # read the data for the file
  for (i in df) { 
    complete <- complete(df) # count the number of complete cases in the file
      if (complete > threshold) {  # if the number is greater than the threshold 
      df
      }
  # compute the correlation of the sulfate and nitrate columns
  # append that correlation to the numeric vector
  print(df) # print the numeric vector
  }