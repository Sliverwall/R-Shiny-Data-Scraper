
ui <- fluidPage(

  theme = bslib::bs_theme(bootswatch = 'flatly'),
  tabsetPanel(
  tabPanel("Config Page", 

  sidebarLayout(
  sidebarPanel(
  checkTextVariablesUI(id = "searchDir", textBox = "Enter file path to search directory: "),
    
  checkTextVariablesUI(id = "sheetName", textBox = "Enter name of sheet to scan: "),
  
  checkTextVariablesUI(id = "rangeName", textBox = "Enter range to scan (e.g., 'A1:B10'): "),

  checkSelectVariablesUI(id = "fileExtension", 
  textBox = "Select file's .extension to scan (e.g., xls): ", 
    selectOptions = c(".xlsm", ".xls", ".xlsx", ".csv", ".txt")),
  
  checkTextVariablesUI(id = "outputFileName", textBox = "Enter file name of output: "),
  
  checkSelectVariablesUI(id = "outputFileExtenstion", 
  textBox = "Select output file's .extension (e.g., xls): ", 
    selectOptions = c(".xlsm", ".xls", ".xlsx", ".csv", ".txt")),

  checkTextVariablesUI(id = "writeDir", textBox = "Enter file path to write directory: "),  

  scanFoldersButtonUI(id = "startSearch", textBox = "Begin Scan"),


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
