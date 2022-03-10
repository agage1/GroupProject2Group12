library(shiny)

ui <- fluidPage(
  dateRangeInput("dates", label = h3("Date range")),
  
  hr(),
  fluidRow(column(4, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderPrint({ input$dates })
}

shinyApp(ui, server)
