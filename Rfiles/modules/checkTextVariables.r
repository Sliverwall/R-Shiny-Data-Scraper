library(shiny)


checkTextVariablesUI <- function(id,textBox) {
  # Create unique variable name
  ns <- NS(id)
    tagList(
    # output text
    textInput(ns("textInput"), label = textBox)
    )
  
}


# checkTextVariablesServer.R

checkTextVariablesServer <- function(id) {
  moduleServer(
    id = id,
    module = function(input, output, session) {


      # Update reactive values based on user input
      observeEvent(input$id, {
        input$id
      })
    }
  )
}
