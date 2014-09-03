best <- function(state, outcome, database) {
  #outcome_data_real <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  if (isValidState(state) == FALSE) {
    stop("invalid state")
  }
  if (isValidOutcome(outcome) == FALSE){
    stop("invalid outcome")
  }
  return(bestHospitalInState)
}

#helpers
valid_states <- c("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY")
isValidState <- function(state){
  for (valid_state in valid_states){
    if (state == valid_state)
      return(TRUE)
  }
  return(FALSE)
}

valid_outcomes <- c("heart attack", "pneumonia")
isValidOutcome <- function(outcome){
  for (valid_outcome in valid_outcomes){
    if (outcome == valid_outcome)
      return(TRUE)
  }
  return(FALSE)
}

getHospitalsInState <- function(state, data_frame){
  hospitals_in_state <- outcome_data[outcome_data["state"] == state]
  return(hospitals_in_state)
}

bestHospital <- function(outcome, data_frame){
  for (hospital in data_frame){
    min_deaths <- min(data_frame$deaths)
    return(hospital)
  }
}
#Test data
outcome_data = data.frame(state = c('VA','MD'), hospital = c('Hospital A','Hospital B'), outcome = c('heart attack','pneumonia'), deaths = c(1,2))

#Tests
best("XA", "heart attack", database) #should stop program
best("MD","heart failure", database) #should stop program
best("MD", "heart attack", database) #should return 'Hospital A?'