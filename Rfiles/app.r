library(shiny)
library(bslib)
library(DT)
library(readxl)

# Load in modules
source("modules/functions.r")
source("modules/checkTextVariables.r")
source("modules/checkActionButton.r")
source("modules/checkSelectVariables.r")

# Load in server and ui
source("server/server.r")
source("ui/ui.r")


shinyApp(ui = ui, server = server)


