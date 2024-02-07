library(readxl)


getReadXL <- function(file, sheet) {
    tryCatch(
        readxl::read_excel(file,sheet,col_types = "text", col_names = TRUE),
        error = function(e) {
            message(
                paste0(
                    "Error at file ", file, ":", e
                )
            )
            data.frame()
        }
    )
}

# setTarget <- function(filePath, fileExtension) {
#     start_time <- proc.time()
#     listFiles <- list.files(
#         path = filePath,
#         pattern = fileExtension,
#         include.dirs = FALSE,
#         resursive = TRUE,
#         full.names = TRUE
        
#         # Show progress bar in console
#         print(proc.time() - start_time)

#         # load listFiles
#         return(listFiles)
#     )
# }

scrapeData <- function(filePath, fileExtension, selectedSheet){

    masterFolder <- list.files(filePath,
                                full.names = TRUE)

    # Loop through masterFolder to check each folder's contents

    for (folder in masterFolder){

        fileList <- list.files(
            folder,
            pattern = fileExtension,
            full.names = TRUE
        )

        # Loop through all selected files

        for (file in fileList){
            data <- getReadXL(file, selectedSheet)
                
            # Skip if sheet is blank
            if(!nrow(data)){
                next
            }

            # Bind data together if set already exists
            finalDf <- tryCatch(
                rbind(finalDf, data),
                error = function(e){
                    finalDf <- data
                }
            )
            
            # Return dataframe of joined data
            # finalDf <<- finalDf

            #Test write CSV
            return(print("hello world"))
            write.csv(finalDf, paste0(filePath,"test.csv"),row.names=TRUE )
        }
    }
}