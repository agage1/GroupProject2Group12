
shinyServer(function(input, output) {
  DividendData <- getDividends(SYMBOLS[which(SYMBOLS$Symbol == "MSFT"), 1],
    from = "2010-01-01",
    to = Sys.Date()
  )
  
  if (is.numeric(DividendData)) {
    output$divs <- renderPlot(plot(DividendData, main = "Dividends Since 2010"))
  } else {
    output$divs <- renderUI(paste("The currently selected stock,", input$select, "does not pay a dividend"))
  }
  
})
