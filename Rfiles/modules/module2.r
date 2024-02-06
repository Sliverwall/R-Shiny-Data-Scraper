
# Define UI for scanFolder
scanFolderUI <- function(id) {
  ns <- NS(id)
  tagList(
    
  
  )
}

# Define Server for scanFolder
scanFolderServer <- function(id) {
  moduleServer(
    id = id,
    module = function(input, output, session) {

      # Access reactive values from checkVariables module
      fileExtensionValue <- getReactiveValues()$fileExtension
      sheetNameValue <- getReactiveValues()$sheetName
      searchDirValue <- getReactiveValues()$searchDir
      searchWriteValue <- getReactiveValues()$searchWrite

      # Rest of the server logic for checkFile module
      # Use fileExtensionValue, sheetNameValue, searchDirValue, and searchWriteValue as needed
    }
  )
}


