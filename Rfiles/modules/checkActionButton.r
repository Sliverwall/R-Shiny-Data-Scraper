checkActionButtonUI <- function(id,textBox) {
  # Create unique variable name
  ns <- NS(id)
    tagList(
    # output text
    actionButton(ns("actionButtonInput"), label = textBox
    )
    )
  
}


# checkActionButtonServer.R

checkActionButtonServer <- function(id) {
  moduleServer(
    id = id,
    module = function(input, output, session) {

        dataOutput <- shiny::eventReactive(
            input$id, {
                scrapeData("/home/sliverwall/Desktop/testCompileFolder/master/",
                "\\.(xlsx)$",
                "Sheet1")
                
            }
        )
        dataOutput
    }
  )
}