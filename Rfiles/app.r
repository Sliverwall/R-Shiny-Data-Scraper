library(shiny)
library(bslib)
library(DT)
library(readxl)

# Load in modules
source("modules/functions.r")
source("modules/checkTextVariables.r")
source("modules/checkSelectVariables.r")
source("modules/scanFoldersButton.r")
source("modules/displayDT.r")

# Load in server and ui
source("server/server.r")
source("ui/ui.r")


shinyApp(ui = ui, server = server)

# shiny::runApp("/home/sliverwall/Desktop/Rlang/R-Shiny-Data-Scraper/Rfiles/app.r")

