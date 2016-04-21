complete <- function(directory, id = 1:332) {
    filesList = list.files(directory, full.names = TRUE) 
    dataCompleteCases <- data.frame()
    for (i in id) {
        data <- read.csv(filesList[i])
        nobs <- sum(complete.cases(data))
        dataCompleteCases <- rbind(dataCompleteCases, data.frame(i,nobs))
    }
    dataCompleteCases
}