# best <- function(state, outcome = NULL) {
#   ## Read outcome data
#   outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
#   ## Check that state and outcome are valid
#   for (i in states_vector){
#     if (state != states_vector){
#       stop("invalid state")
#     } else if (outcome != ("heart attack" || "heart failure" || "pneumonia")){
#         stop("invalid outcome")
#     } else
#       return ##hospital name in that state with lowest 30-day death rate
#   }
# }
ss <- 1:50
b <- function(s){
  for (i in ss){
    if (s != ss[i])
      stop("stop")
  }
}