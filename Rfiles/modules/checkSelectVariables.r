
checkSelectVariablesUI <- function(id,textBox, selectOptions) {
  # Create unique variable name
  ns <- NS(id)
    tagList(
    # output text
    selectInput(ns("selectInput"), label = textBox,
    choices = selectOptions)
    )
  
}


# checkSelectVariablesServer.R

checkSelectVariablesServer <- function(id) {
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