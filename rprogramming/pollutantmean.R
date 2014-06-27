pollutantmean <- function(directory, pollutant, id = 1:332) {
        directory <- dir(directory, full.names = TRUE)
        df <- data.frame()
        for (i in id) {
                df <- rbind(df, read.csv(directory[i]))
        }
        if (pollutant == "nitrate"){
                mean(df$nitrate, na.rm = TRUE)
        } else if (pollutant == "sulfate"){
                mean(df$sulfate, na.rm = TRUE)
        } else
                print("Error")
}