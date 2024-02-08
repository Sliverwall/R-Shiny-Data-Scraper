
library(DT)
# Define UI for displayDT
displayDTUI <- function(id) {
  ns <- NS(id)
  tagList(
    DTOutput(ns("scrapedDataTable"))
  )
}

# Define Server for displayDT
displayDTServer <- function(id, dataOutput) {
  moduleServer(
    id = id,
    module = function(input, output, session) {

      # output retrived df
      output$scrapedDataTable <- renderDT({
        datatable(dataOutput)
      })
    }
  )
}


