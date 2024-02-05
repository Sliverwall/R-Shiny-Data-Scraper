# Load necessary libraries
library(shiny)

# Define UI for module2
module2UI <- function(id) {
  ns <- NS(id)
  tagList(
    # UI components specific to module2 go here
    fluidRow(
      column(6, selectInput(ns("input_category"), label = "Select Category", choices = unique(data$category))),
      column(6, plotOutput(ns("output_histogram")))
    )
  )
}

# Define server logic for module2
module2Server <- function(id, data) {
  moduleServer(
    id,
    function(input, output, session) {
      # Server logic specific to module2 goes here

      # Example: Render a histogram based on the selected category
      output$output_histogram <- renderPlot({
        req(input$input_category)
        hist(data[data$category == input$input_category, "value"])
      })
    }
  )
}

