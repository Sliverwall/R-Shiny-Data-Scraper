
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

checkSelectVariablesServer <- function(input, output, session) {
  reactive({
    selectedValue <- input$selectInput
    # Perform any processing or actions with the selected value here if needed
    return(selectedValue)
  })
}
