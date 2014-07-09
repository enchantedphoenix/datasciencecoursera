complete <- function (directory, id = 1:332){
        directory <- list.files(directory, full.names = TRUE)        
        for (i in id) {
                df <- read.csv(directory[i])
                cc <- complete.cases(df)
                x <- sum(complete.cases(df))
                final_obs <- c(final_obs, x)
                final_df <- data.frame(id, final_obs)
                return final_df
        }
}