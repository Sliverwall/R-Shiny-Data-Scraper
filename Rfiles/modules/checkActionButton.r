

checkActionButtonUI <- function(id,textBox) {
  # Create unique variable name
  ns <- NS(id)
    tagList(
    # output text
    actionButton(ns("actionButtonInput"), label = textBox
    )
    )
  
}


# checkActionButtonServer.R

checkActionButtonServer <- function(id, selectedSearchFilePath, selectedFileExtenstion, selectedSheet, selectedRange,
selectedWritePath, selectedOutputFileName, selectedOutputFileType) {
  moduleServer(
    id = id,
    module = function(input, output, session) {
      # Your existing server logic goes here
      
      observeEvent(input$actionButtonInput, {
        # Sample dataframe creation
        print(selectedFileExtenstion)
        FILE_TYPE <- paste0("\\",selectedFileExtenstion, "()$")
        
        tryCatch({
          combined_df <- scrapeData(
            selectedSearchFilePath,
            selectedSheet,
            selectedRange,
            FILE_TYPE,
            TRUE
          )
          
          # Adjust the file path and name based on your needs
          write.csv(combined_df,
                    paste0(selectedWritePath,selectedOutputFileName, selectedOutputFileType),
                    row.names = FALSE)
          
        }, error = function(e) {
          # Handle errors if necessary
          print(paste("Error:", e))
          print(FILE_TYPE)
          print(selectedSheet)
          print(selectedRange)
        })
      })
    }
  )
}

