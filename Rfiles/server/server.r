server <- function(input, output, session) {
  checkTextVariablesServer(
    id = "searchDir"
  )
  checkTextVariablesServer(
    id = "writeDir"
  )
  checkTextVariablesServer(
    id = "writeDir"
  )
  checkTextVariablesServer(
    id = "sheetName"
  )
  checkSelectVariablesServer(
    id = "fileExtenstion"
  )
  
  finalDf <- observe({
    checkActionButtonServer(
    id = "startSearch"
 )
  })

  displayDTServer(
    id = "displayScanData",
    dataOutput = finalDF
  )
}