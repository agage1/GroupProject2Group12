
server <- function(input, output, session) {
  
  
  output$text <- renderUI({
    HTML(paste(input$select, collapse = "<br/>"))
  })
  
  output$dropdown <- renderUI(
    pickerInput(
      inputId = "select",
      # multiple = T,
      label = h3("Choose Your Stock"),
      choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
      selected = SYMBOLS$SYMBOLNAMECOMBO[which(SYMBOLS$Symbol == "MSFT")],
      options = list(
        `live-search` = TRUE
      )
    )
  )
  
  output$dropdown2 <- renderUI({
    pickerInput(
      inputId = "select2",
      # multiple = T,
      label = h3("Choose Information to Display"),
      choices = c("Open", "High", "Low", "Close", "Volume"),
      selected = "Open",
      options = list(
        `live-search` = TRUE
      )
    )
  })
  
  
  output$link <- renderUI({
    req(input$select)
    value <- SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)]
    barelink <- paste0(
      YAHOOURLSTART,
      value
    )
    
    a(href = barelink, paste("See your stock", SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)], "on Yahoo Finance"), target = "_blank")
  })
  
  
  output$divs <- renderPlot({
    stockInfo <- getSymbols(SYMBOLS[which(SYMBOLS$SYMBOLNAMECOMBO == input$select), 1], src = "yahoo", auto.assign = FALSE, from = input$dates[1], to = input$dates[2])
    names(stockInfo) <- clean_names(stockInfo)
    
    plot(stockInfo[, input$select2],
         from = input$dates[1],
         to = input$dates[2],
         env = parent.frame(),
         src = "yahoo",
         auto.assign = FALSE,
         auto.update = FALSE,
         verbose = FALSE, main = paste(SYMBOLS$Name[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)], " -- ", input$select2)
    )
  })
}