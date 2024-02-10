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
        # Sample dataframe creation

         observeEvent(input$actionButtonInput, {
  
  tryCatch({
  combined_df <- scrape_data(
        "/home/sliverwall/Desktop/testCompileFolder/master/",
        "/home/sliverwall/Desktop/testCompileFolder/master/",
        "Sheet1",
        "A1:B50",
        "\\.csv()$",
        TRUE
      )
    write.csv(combined_df,
                 "/home/sliverwall/Desktop/testCompileFolder/test2.csv",
                 row.names = FALSE)
         })
         
})
    }
  )}
