library(shiny)


checkVariablesUI <- function(id) {
  # Create unique variable name
  ns <- NS(id)
  fluidRow(
    # checkFileExtension
    textInput(ns("fileExtensionInput"), "Enter File Extension (e.g., txt)"),

    # check sheet name
    textInput(ns("sheetNameInput"), "Enter name of sheet (e.g., sheet1)"),

    # check search dir
    textInput(ns("searchDirInput"), "Enter file path to scrape (e.g., /home/sliverwall/Desktop/Misc/)"),

    # check Write
    textInput(ns("searchWriteInput"), "Enter file path to output csv (e.g., /home/sliverwall/Desktop/Misc/)"),
  )
}


# checkVariablesServer.R

checkVariablesServer <- function(id) {
  moduleServer(
    id = id,
    module = function(input, output, session) {

      # Initialize reactiveValues in a reactiveList
      reactiveValuesStore <- reactiveValues(
        fileExtension = "",
        sheetName = "",
        searchDir = "",
        searchWrite = ""
      )

      # Update reactive values based on user input
      observeEvent(input$fileExtensionInput, {
        reactiveValuesStore$fileExtension <- input$fileExtensionInput
      })

      observeEvent(input$sheetNameInput, {
        reactiveValuesStore$sheetName <- input$sheetNameInput
      })

      observeEvent(input$searchDirInput, {
        reactiveValuesStore$searchDir <- input$searchDirInput
      })

      observeEvent(input$searchWriteInput, {
        reactiveValuesStore$searchWrite <- input$searchWriteInput
      })

      # Expose reactive values for use in other modules
      setReactiveValues(fileExtension = reactiveValuesStore$fileExtension,
                        sheetName = reactiveValuesStore$sheetName,
                        searchDir = reactiveValuesStore$searchDir,
                        searchWrite = reactiveValuesStore$searchWrite)
    }
  )
}
