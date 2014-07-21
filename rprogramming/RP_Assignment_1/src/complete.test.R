complete.test <- function(directory, id = 1:332) {
  
  for(i in id) {
    path<-paste(directory,"/",id[i],".csv",sep="")
    mydata<-read.csv(path)
    #nobs<-nrow(na.omit(mydata))
    nobs<-sum(complete.cases(mydata))
    i<-i+1
  }
  completedata<-c(id,nobs)
}