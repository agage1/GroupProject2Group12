
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
  
  output$dropdown3 <- renderUI(
    pickerInput(
      inputId = "select3",
      multiple = T,
      label = h4("Choose Your Stocks (Limit of 15)"),
      choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
      selected = SYMBOLS$SYMBOLNAMECOMBO[which(SYMBOLS$Symbol == "MSFT")],
      options = list(
        `live-search` = TRUE,
        `selected-text-format` = "count",
        `max-options` = 15
      )
    )
  )
  
  observeEvent(input$select3, {
    DoesItWork <- length(input$select3)
    
    if (DoesItWork == 1) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 2) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 3) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 4) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 5) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 6) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 7) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 8) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 9) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 10) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select3[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 11) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select3[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select3[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 12) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select3[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select3[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select3[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 13) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select3[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select3[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select3[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput13 <- renderUI({
        numericInput(
          inputId = "numberbox13",
          label = paste("How Many Shares of", input$select3[13], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 14) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select3[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select3[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select3[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput13 <- renderUI({
        numericInput(
          inputId = "numberbox13",
          label = paste("How Many Shares of", input$select3[13], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput14 <- renderUI({
        numericInput(
          inputId = "numberbox14",
          label = paste("How Many Shares of", input$select3[14], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select3[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select3[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select3[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select3[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select3[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select3[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select3[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select3[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select3[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select3[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select3[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select3[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput13 <- renderUI({
        numericInput(
          inputId = "numberbox13",
          label = paste("How Many Shares of", input$select3[13], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput14 <- renderUI({
        numericInput(
          inputId = "numberbox14",
          label = paste("How Many Shares of", input$select3[14], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput15 <- renderUI({
        numericInput(
          inputId = "numberbox15",
          label = paste("How Many Shares of", input$select3[15], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    }
  })
  
  observeEvent(input$confirm,{
    output$duration <- renderUI({
      numericInput(
        inputId = "years",
        label = "How many years do you want to simulate?",
        value = 40,
        min = 1,
        max = 100
      )
    })
    output$confirmduration <- renderUI({
      actionButton(inputId = "condur",label = "Confirm Simulation Duration")
    })
  })
  
  observeEvent(input$condur,{
    output$buttons <- renderUI({
      awesomeRadio(
        inputId = "simtype",
        label = "What Type of Simulation to Run?", 
        choices = c("Average Yearly Return", "Drift"),
        selected = "Average Yearly Return",
        inline = TRUE, 
        checkbox = TRUE
      )
    })
    output$buttonbutton <- renderUI({
      actionButton(inputId = "simtime", label = "Run Simulation")
    })
  })
  
  
  output$link2 <- renderUI({
    req(input$select)
    value2 <- SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)]
    
    barelink2 <- paste0(MotleyUrlStart,value2)
    a(href = barelink2, paste("See your stock", SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)], "on Motley Fool"), target = "_blank")
  })
  
  
  output$link3 <- renderUI({
    req(input$select)
    value3 <- SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)]
    
    barelink3 <- paste0(ZacksUrlStart,value3)
    a(href = barelink3, paste("See your stock", SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)], "on Zacks"), target = "_blank")
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
  
  output$realdivs <- renderText(paste("Dividends Over Period Selected = $", 
                                      sum(getDividends(SYMBOLS[which(SYMBOLS$SYMBOLNAMECOMBO == input$select), 1], from = input$dates2[1], to = input$dates2[2]))
  ))
  output$realdivsgraph <-renderPlot(
    plot(getDividends(SYMBOLS[which(SYMBOLS$SYMBOLNAMECOMBO == input$select), 1], 
                      from = input$dates2[1], 
                      to = input$dates2[2]),
         from = input$dates2[1], 
         to = input$dates2[2],
         main = paste(SYMBOLS$Name[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)], " -- Dividends Paid"))
    
  )
}
