library(shiny)
# Load in server and ui
source("server/server.r")
source("ui/ui.r")

# Load in modules
source("modules/module1.r")




shinyApp(ui = ui, server = server)





