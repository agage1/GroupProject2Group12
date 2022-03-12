library(shiny)
library(quantmod)
library(shinyWidgets)
library(dplyr)
library(plotly)
SYMBOLS <- stockSymbols()


ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
    selectInput("select", label = h3("Select box"), 
              choices = sort(SYMBOLS$SYMBOLNAMECOMBO), 
              selected = 1),
  
  hr(),
  fluidRow(column(3, verbatimTextOutput("value"))),
  
  selectInput("select", label = h3("Select box"), 
              choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
              selected = 1),
          
  
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))),
  mainPanel(
    plotlyOutput("stockplot")
  )
  )
)

server <- function(input, output, session) {
  output$stock <- renderPlotly( 
  SYMBOLS %>%
    ggplot(aes(x = date, y = close, color = symbol)) +
    geom_line(size = 1) +
    ggtitle("Stock Comparison"))
}

shinyApp(ui, server)
