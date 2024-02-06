
ui <- fluidPage(

  theme = bslib::bs_theme(bootswatch = 'flatly'),
  titlePanel("My Shiny App"),
  checkVariablesUI(
    id = "searchDir", textBox = "Enter file path to search directory: "
  ),
  checkVariablesUI(
    id = "writeDir", textBox = "Enter file path to write directory: "
  ),
  checkVariablesUI(
    id = "sheetName", textBox = "Enter name of sheet to scan: "
  ),
  checkVariablesUI(
    id = "fileExtension", textBox = "Enter file's .extension to scan (e.g., xls): "
  )
  
)
