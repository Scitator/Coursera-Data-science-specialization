pollutantmean <- function(directory, pollutant, id = 1:332) {
    # read data
    filesList = list.files(directory, full.names = TRUE) 
    data <- data.frame()
    for (i in id) {
        data <- rbind(data, read.csv(filesList[i]))
    }
    # compute
    if (pollutant == "sulfate") {
        mean(data$sulfate, na.rm = TRUE)
    } else if (pollutant == "nitrate") {
        mean(data$nitrate, na.rm = TRUE)
    }
}