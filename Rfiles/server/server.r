server <- function(input, output, session) {

  # Get reactive values from userInput

  selectedSearchFilePath <- callModule(checkTextVariablesServer, "searchDir")
  selectedFileExtension <- callModule(checkSelectVariablesServer, "fileExtension")
  selectedSheetName <- callModule(checkTextVariablesServer, "sheetName")
  selectedRangeName <- callModule(checkTextVariablesServer, "rangeName")
  selectedWritePath <- callModule(checkTextVariablesServer, "writeDir")
  selectedOutputFileName <- callModule(checkTextVariablesServer, "outputFileName")
  selectedOutputFileType <- callModule(checkSelectVariablesServer, "outputFileExtension")

  checkActionButtonServer(
    id = "startSearch",
    selectedSearchFilePath(),
    selectedFileExtension(),
    selectedSheetName(),
    selectedRangeName(),
    selectedWritePath(),
    selectedOutputFileName(),
    selectedOutputFileType()

  )
}
