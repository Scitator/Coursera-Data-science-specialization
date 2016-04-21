corr <- function(directory, threshold = 0) {
    filesList <- list.files(directory, full.names = TRUE)
    
    result <- vector(mode = "numeric", length = 0)
    for (i in 1:length(filesList)) {
        data <- read.csv(filesList[i])
        csum <- sum((!is.na(data$sulfate)) & (!is.na(data$nitrate)))
        if (csum > threshold) {
            #tmp <- data[which(!is.na(data$sulfate)), ]
            #subData <- tmp[which(!is.na(tmp$nitrate)), ]
            subData <- complete.cases(data)
            result <- c(result, cor(subData$sulfate, subData$nitrate))
        }
    }
    result
}