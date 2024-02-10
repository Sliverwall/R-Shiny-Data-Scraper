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

      dataOutput <- observe(dataOutput)
      # output retrieved df
      if (!is.null(dataOutput)){
      output$scrapedDataTable <- renderDT({
        datatable(dataOutput)
      })
      } else {
        output$scrapedDataTable <- renderDT({
        datatable(data.frame())
      })
      }
    }
  )
}


