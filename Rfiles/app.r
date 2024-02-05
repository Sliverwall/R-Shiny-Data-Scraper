# app.R
library(shiny)

# Load modules
source("modules/module1.r")


# Define UI
ui <- fluidPage(
  module1UI()
)

# Define server
server <- function(input, output, session) {
  
}

# Run the application
shinyApp(ui, server)
