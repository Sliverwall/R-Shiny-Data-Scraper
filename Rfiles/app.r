# app.R
library(renv)
renv::init()
library("shiny")

# Load modules
source("modules/module1.R")

# Define UI
ui <- fluidPage(
  module1UI("module1")
)

# Define server
server <- function(input, output, session) {
  module1Server("module1", data)
  module2Server("module2", data)
}

# Run the application
shinyApp(ui, server)

