library(ggplot2)
library(shiny)


chartUI <- function(id) {
  # Create unique variable name
  ns <- NS(id)
  fluidRow(
    plotOutput(outputId = ns("chart"))
  )
}


chartServer <- function(id, x, y, title) {
  moduleServer(
    id = id,
    module = function(input, output, session) {
      # Convert input data to data.frame
      df <- reactive({
        data.frame(
          x = x,
          y = y
        )
      })

      # Render a plot
      output$chart <- renderPlot({
        ggplot(df(), aes(x = x, y = y)) +
          geom_col() +
          labs(
            title = title
          )
      })
    }
  )
}