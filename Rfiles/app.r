library(shiny)
library(bslib)
library(DT)

# Load in server and ui
source("server/server.r")
source("ui/ui.r")

# Load in modules
source("modules/module1.r")
source("modules/module2.r")


shinyApp(ui = ui, server = server)


