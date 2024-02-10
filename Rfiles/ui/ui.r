
ui <- fluidPage(

  theme = bslib::bs_theme(bootswatch = 'flatly'),
  tabsetPanel(
  tabPanel("Config Page", 

  sidebarLayout(
  sidebarPanel(
  checkTextVariablesUI(
    id = "searchDir", textBox = "Enter file path to search directory: "),

  checkTextVariablesUI(
    id = "writeDir", textBox = "Enter file path to write directory: "),

  checkTextVariablesUI(
    id = "sheetName", textBox = "Enter name of sheet to scan: "),

  checkSelectVariablesUI(
    id = "fileExtension", textBox = "Select file's .extension to scan (e.g., xls): ", 
    selectOptions = c(".xlsm", ".xls", ".xlsx", ".csv")),

  checkActionButtonUI(
    id = "startSearch", textBox = "Begin Scan"),

  ), # end of sidebarPanel
  mainPanel(
  displayDTUI(
    id = "displayScanData"
  )
  ) # end of main panel
    ) # end of sidebarLayout,
  ) # tabPanel end
  )  #tabsetPanel end
  
) # fluidPage end
