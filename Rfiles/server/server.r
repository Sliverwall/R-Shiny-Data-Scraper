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
  checkActionButtonServer(
    id = "startSearch"
  )
}