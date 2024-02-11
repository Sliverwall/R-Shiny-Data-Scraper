
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

#---------------------IMPORTS-----------------

library(shiny)
library(readxl)
library(dplyr)

#-----------------FUNCTIONS-------------
scrapeData <- function(SEARCH_DIR,
                        SELECTED_SHEET,
                        READ_RANGE,
                        FILE_TYPE,
                        COMPLETE_CASES){
  



    # Set file type lists

    excelList <- list("\\.xls()$", "\\.xlsx()$", "\\.xlsm()$")


    # Collect start time
    startTime <- proc.time()
  #Define main folder

  mainFolder <- list.files(SEARCH_DIR,
                            full.names = TRUE,
                            recursive = FALSE)
  
  scannedFile_done <- 0
  
  #Loop through each folder in the mainFolder
  for (folder in mainFolder){

    #read folder date then skip if older than or younger than date limit
    if (is.null(folder)){
      next
    } else {
      
      #list all scannedFile sheets
      scannedFile_list <- list.files(folder,
                               pattern = FILE_TYPE,
                               full.names = TRUE)
      
      #loop for all scannedFile sheets
      for (scannedFile in scannedFile_list){
        #tryCatch() to handle errors if scannedFile sheet does not have specified selected_sheet
        
        data <- tryCatch({
          
          #check date conditions on file
          
          if(!is.null(scannedFile)){
            
            #read in scannedFile data within specified ranges and conditions
            
            if (FILE_TYPE %in% excelList) {
            df <- read_excel(scannedFile,
                            sheet = SELECTED_SHEET,
                            range = READ_RANGE,
                            col_names = TRUE)
            } else if (FILE_TYPE == "\\.csv()") {
            df <- read.csv(scannedFile)
            } else {
            df <- read.table(scannedFile, header = TRUE, sep = "\t")
            }

            
            #store file path for double checking later on 
            df$file_path = scannedFile
            
            if (COMPLETE_CASES == TRUE){
              df <- df[complete.cases(df),]
            } else {
              df <- df
            }
          } else {
            next
          }
            
            ### compose error message for debugging
        }, error = function(e){
            message(paste0("Error reading", scannedFile, ":", e))
          
          #skip 
          next
          
          }
        )
        
        # if empty, skip
        if (!nrow(data)){
          next
        }
        #count scannedFile_done to check how many have been collected
        if (scannedFile_done > 0){
          combined_df <- rbind(combined_df, data)
        } else{
          combined_df <- data
        }
          scannedFile_done <- scannedFile_done + 1
        
        
      }
    }
  }
    # Print eslapsed time
    print(proc.time() - startTime)
   combined_df <<- combined_df
}