library(shiny)
library(quantmod)
library(shinyWidgets)
library(dplyr)
library(plotly)
SYMBOLS <- stockSymbols()


ui <- fluidPage(
  mainPanel(
    uiOutput("dropdown4"),
    br(),
    uiOutput("text2"),
    br(),
    uiOutput("dropdown5"),
    br(),
    uiOutput("text3"),
    br(),
    plotOutput("stockplot",
               width = "100%",
               height = "400px",
               click = NULL,
               dblclick = NULL,
               hover = NULL,
               brush = NULL,
               inline = FALSE)
  )
)

server <- function(input, output, session) {
  
  output$text1 <- renderUI({
    HTML(paste(input$select, collapse = "<br/>"))
  })
  
  output$dropdown4 <- renderUI(
    pickerInput(
      inputId = "select4",
      # multiple = T,
      label = h3("Choose First Stock"),
      choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
      selected = SYMBOLS$SYMBOLNAMECOMBO[which(SYMBOLS$Symbol == "MSFT")],
      options = list(
        `live-search` = TRUE
      )
    )
  )
  
  output$dropdown5 <- renderUI(
    pickerInput(
      inputId = "select5",
      # multiple = T,
      label = h3("Choose Second Stock"),
      choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
      selected = SYMBOLS$SYMBOLNAMECOMBO[which(SYMBOLS$Symbol == "MSFT")],
      options = list(
        `live-search` = TRUE
      )
    )
  )
  
  output$stockplot <- renderPlot({
    stockCloses <- getSymbols(SYMBOLS[which(SYMBOLS$SYMBOLNAMECOMBO == input$select4), 1])
    names(stockCloses) <- clean_names(stockCloses)
    
    plot(stockCloses[, input$select5],
      env = parent.frame(),
      src = "yahoo",
      auto.assign = FALSE,
      auto.update = FALSE,
      verbose = FALSE 
      )
  })
}

shinyApp(ui, server)
