server <- function(input, output, session) {
  chartServer(
    id = "chart1",
    x = c("Q1", "Q2", "Q3", "Q4"),
    y = c(505.21, 397.18, 591.44, 674.90),
    title = "Sales in 000 for 2023"
  )
}