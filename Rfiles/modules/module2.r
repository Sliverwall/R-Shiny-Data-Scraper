
library(DT)
# Define UI for scanFolder
scanFolderUI <- function(id) {
  ns <- NS(id)
  tagList(
    DTOutput(ns("scrapedDataTable"))
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

      scrappedData <- scrapeData(searchDirValue, fileExtensionValue, sheetNameValue)

      # output retrived df
      output$scrapedDataTable <- renderDT({
        datatable(scrappedData)
      })
    }
  )
}


