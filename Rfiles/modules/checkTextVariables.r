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

checkTextVariablesServer <- function(input, output, session) {
  reactive({
    selectedValue <- input$textInput
    # Perform any processing or actions with the selected value here if needed
    return(selectedValue)
  })
}


