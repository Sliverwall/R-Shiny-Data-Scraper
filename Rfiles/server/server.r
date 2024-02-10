server <- function(input, output, session) {
  SEARCH_DIR <- checkTextVariablesServer(
    id = "searchDir"
  )
  WRITE_DIR <- checkTextVariablesServer(
    id = "writeDir"
  )
  SELECTED_SHEET <- checkTextVariablesServer(
    id = "sheetName"
  )
  FILE_TYPE <- checkSelectVariablesServer(
    id = "fileExtenstion"
  )
    checkActionButtonServer(
    id = "startSearch"
 )

}