
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
    
    for (trials in 1:15){
      KillItWithFire <- paste0("numberinput",trials)
      output[[KillItWithFire]] <- NULL
    }
    
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
    output$description <- renderText({
      paste("Since it is the only forecasting model that we currently know that includes a trend, the simulation will be performed using the Drift model.")
    })
    output$buttonbutton <- renderUI({
      actionButton(inputId = "simtime", label = "Run Simulation")
    })
  })
  
  
  
  observeEvent(input$simtime,{
    DoesItWork <- length(input$select3)
    if (DoesItWork == 1){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F)
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
    } else if(DoesItWork == 2){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
    } else if(DoesItWork == 3){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
    } else if(DoesItWork == 4){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
    } else if(DoesItWork == 5){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
    } else if(DoesItWork == 6){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
    } else if(DoesItWork == 7){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
    } else if(DoesItWork == 8){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
    } else if(DoesItWork == 9){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
    } else if(DoesItWork == 10){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      stock10 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[10])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
      DailyChange10 <- (as.numeric(stock10[nrow(stock10),4])-as.numeric(stock10[1,1]))/as.numeric(difftime(zoo::index(stock10)[length(zoo::index(stock10))],zoo::index(stock10[1])))
    } else if(DoesItWork == 11){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      stock10 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[10])],src = "yahoo",auto.assign = F) 
      stock11 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[11])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
      DailyChange10 <- (as.numeric(stock10[nrow(stock10),4])-as.numeric(stock10[1,1]))/as.numeric(difftime(zoo::index(stock10)[length(zoo::index(stock10))],zoo::index(stock10[1])))
      DailyChange11 <- (as.numeric(stock11[nrow(stock11),4])-as.numeric(stock11[1,1]))/as.numeric(difftime(zoo::index(stock11)[length(zoo::index(stock11))],zoo::index(stock11[1])))
    } else if(DoesItWork == 12){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      stock10 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[10])],src = "yahoo",auto.assign = F) 
      stock11 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[11])],src = "yahoo",auto.assign = F) 
      stock12 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[12])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
      DailyChange10 <- (as.numeric(stock10[nrow(stock10),4])-as.numeric(stock10[1,1]))/as.numeric(difftime(zoo::index(stock10)[length(zoo::index(stock10))],zoo::index(stock10[1])))
      DailyChange11 <- (as.numeric(stock11[nrow(stock11),4])-as.numeric(stock11[1,1]))/as.numeric(difftime(zoo::index(stock11)[length(zoo::index(stock11))],zoo::index(stock11[1])))
      DailyChange12 <- (as.numeric(stock12[nrow(stock12),4])-as.numeric(stock12[1,1]))/as.numeric(difftime(zoo::index(stock12)[length(zoo::index(stock12))],zoo::index(stock12[1])))
    } else if(DoesItWork == 13){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      stock10 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[10])],src = "yahoo",auto.assign = F) 
      stock11 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[11])],src = "yahoo",auto.assign = F) 
      stock12 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[12])],src = "yahoo",auto.assign = F) 
      stock13 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[13])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
      DailyChange10 <- (as.numeric(stock10[nrow(stock10),4])-as.numeric(stock10[1,1]))/as.numeric(difftime(zoo::index(stock10)[length(zoo::index(stock10))],zoo::index(stock10[1])))
      DailyChange11 <- (as.numeric(stock11[nrow(stock11),4])-as.numeric(stock11[1,1]))/as.numeric(difftime(zoo::index(stock11)[length(zoo::index(stock11))],zoo::index(stock11[1])))
      DailyChange12 <- (as.numeric(stock12[nrow(stock12),4])-as.numeric(stock12[1,1]))/as.numeric(difftime(zoo::index(stock12)[length(zoo::index(stock12))],zoo::index(stock12[1])))
      DailyChange13 <- (as.numeric(stock13[nrow(stock13),4])-as.numeric(stock13[1,1]))/as.numeric(difftime(zoo::index(stock13)[length(zoo::index(stock13))],zoo::index(stock13[1])))
    } else if(DoesItWork == 14){
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F) 
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F) 
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      stock10 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[10])],src = "yahoo",auto.assign = F) 
      stock11 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[11])],src = "yahoo",auto.assign = F) 
      stock12 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[12])],src = "yahoo",auto.assign = F) 
      stock13 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[13])],src = "yahoo",auto.assign = F) 
      stock14 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[14])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
      DailyChange10 <- (as.numeric(stock10[nrow(stock10),4])-as.numeric(stock10[1,1]))/as.numeric(difftime(zoo::index(stock10)[length(zoo::index(stock10))],zoo::index(stock10[1])))
      DailyChange11 <- (as.numeric(stock11[nrow(stock11),4])-as.numeric(stock11[1,1]))/as.numeric(difftime(zoo::index(stock11)[length(zoo::index(stock11))],zoo::index(stock11[1])))
      DailyChange12 <- (as.numeric(stock12[nrow(stock12),4])-as.numeric(stock12[1,1]))/as.numeric(difftime(zoo::index(stock12)[length(zoo::index(stock12))],zoo::index(stock12[1])))
      DailyChange13 <- (as.numeric(stock13[nrow(stock13),4])-as.numeric(stock13[1,1]))/as.numeric(difftime(zoo::index(stock13)[length(zoo::index(stock13))],zoo::index(stock13[1])))
      DailyChange14 <- (as.numeric(stock14[nrow(stock14),4])-as.numeric(stock14[1,1]))/as.numeric(difftime(zoo::index(stock14)[length(zoo::index(stock14))],zoo::index(stock14[1])))
    } else {
      stock1 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[1])],src = "yahoo",auto.assign = F) 
      stock2 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[2])],src = "yahoo",auto.assign = F) 
      stock3 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[3])],src = "yahoo",auto.assign = F)
      stock4 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[4])],src = "yahoo",auto.assign = F)  
      stock5 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[5])],src = "yahoo",auto.assign = F) 
      stock6 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[6])],src = "yahoo",auto.assign = F) 
      stock7 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[7])],src = "yahoo",auto.assign = F) 
      stock8 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[8])],src = "yahoo",auto.assign = F) 
      stock9 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[9])],src = "yahoo",auto.assign = F) 
      stock10 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[10])],src = "yahoo",auto.assign = F) 
      stock11 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[11])],src = "yahoo",auto.assign = F) 
      stock12 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[12])],src = "yahoo",auto.assign = F) 
      stock13 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[13])],src = "yahoo",auto.assign = F) 
      stock14 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[14])],src = "yahoo",auto.assign = F) 
      stock15 <- getSymbols(SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select3[15])],src = "yahoo",auto.assign = F) 
      DailyChange1 <- (as.numeric(stock1[nrow(stock1),4])-as.numeric(stock1[1,1]))/as.numeric(difftime(zoo::index(stock1)[length(zoo::index(stock1))],zoo::index(stock1[1])))
      DailyChange2 <- (as.numeric(stock2[nrow(stock2),4])-as.numeric(stock2[1,1]))/as.numeric(difftime(zoo::index(stock2)[length(zoo::index(stock2))],zoo::index(stock2[1])))
      DailyChange3 <- (as.numeric(stock3[nrow(stock3),4])-as.numeric(stock3[1,1]))/as.numeric(difftime(zoo::index(stock3)[length(zoo::index(stock3))],zoo::index(stock3[1])))
      DailyChange4 <- (as.numeric(stock4[nrow(stock4),4])-as.numeric(stock4[1,1]))/as.numeric(difftime(zoo::index(stock4)[length(zoo::index(stock4))],zoo::index(stock4[1])))
      DailyChange5 <- (as.numeric(stock5[nrow(stock5),4])-as.numeric(stock5[1,1]))/as.numeric(difftime(zoo::index(stock5)[length(zoo::index(stock5))],zoo::index(stock5[1])))
      DailyChange6 <- (as.numeric(stock6[nrow(stock6),4])-as.numeric(stock6[1,1]))/as.numeric(difftime(zoo::index(stock6)[length(zoo::index(stock6))],zoo::index(stock6[1])))
      DailyChange7 <- (as.numeric(stock7[nrow(stock7),4])-as.numeric(stock7[1,1]))/as.numeric(difftime(zoo::index(stock7)[length(zoo::index(stock7))],zoo::index(stock7[1])))
      DailyChange8 <- (as.numeric(stock8[nrow(stock8),4])-as.numeric(stock8[1,1]))/as.numeric(difftime(zoo::index(stock8)[length(zoo::index(stock8))],zoo::index(stock8[1])))
      DailyChange9 <- (as.numeric(stock9[nrow(stock9),4])-as.numeric(stock9[1,1]))/as.numeric(difftime(zoo::index(stock9)[length(zoo::index(stock9))],zoo::index(stock9[1])))
      DailyChange10 <- (as.numeric(stock10[nrow(stock10),4])-as.numeric(stock10[1,1]))/as.numeric(difftime(zoo::index(stock10)[length(zoo::index(stock10))],zoo::index(stock10[1])))
      DailyChange11 <- (as.numeric(stock11[nrow(stock11),4])-as.numeric(stock11[1,1]))/as.numeric(difftime(zoo::index(stock11)[length(zoo::index(stock11))],zoo::index(stock11[1])))
      DailyChange12 <- (as.numeric(stock12[nrow(stock12),4])-as.numeric(stock12[1,1]))/as.numeric(difftime(zoo::index(stock12)[length(zoo::index(stock12))],zoo::index(stock12[1])))
      DailyChange13 <- (as.numeric(stock13[nrow(stock13),4])-as.numeric(stock13[1,1]))/as.numeric(difftime(zoo::index(stock13)[length(zoo::index(stock13))],zoo::index(stock13[1])))
      DailyChange14 <- (as.numeric(stock14[nrow(stock14),4])-as.numeric(stock14[1,1]))/as.numeric(difftime(zoo::index(stock14)[length(zoo::index(stock14))],zoo::index(stock14[1])))
      DailyChange15 <- (as.numeric(stock15[nrow(stock15),4])-as.numeric(stock15[1,1]))/as.numeric(difftime(zoo::index(stock15)[length(zoo::index(stock15))],zoo::index(stock15[1])))
    }
    
    
    if (DoesItWork == 1){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1
    } else if (DoesItWork == 2){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2
    } else if (DoesItWork == 3){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3
    } else if (DoesItWork == 4){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4
    } else if (DoesItWork == 5){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5
    } else if (DoesItWork == 6){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6
    } else if (DoesItWork == 7){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7
    } else if (DoesItWork == 8){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8
    } else if (DoesItWork == 9){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9
    } else if (DoesItWork == 10){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9+(as.numeric(stock10[nrow(stock10),5])+input$years*365*DailyChange10)*input$numberbox10
    } else if (DoesItWork == 11){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9+(as.numeric(stock10[nrow(stock10),5])+input$years*365*DailyChange10)*input$numberbox10+(as.numeric(stock11[nrow(stock11),5])+input$years*365*DailyChange11)*input$numberbox11
    } else if (DoesItWork == 12){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9+(as.numeric(stock10[nrow(stock10),5])+input$years*365*DailyChange10)*input$numberbox10+(as.numeric(stock11[nrow(stock11),5])+input$years*365*DailyChange11)*input$numberbox11+(as.numeric(stock12[nrow(stock12),5])+input$years*365*DailyChange12)
    } else if (DoesItWork == 13){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9+(as.numeric(stock10[nrow(stock10),5])+input$years*365*DailyChange10)*input$numberbox10+(as.numeric(stock11[nrow(stock11),5])+input$years*365*DailyChange11)*input$numberbox11+(as.numeric(stock12[nrow(stock12),5])+input$years*365*DailyChange12)+(as.numeric(stock13[nrow(stock13),5])+input$years*365*DailyChange13)*input$numberbox13
    } else if (DoesItWork == 14){
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9+(as.numeric(stock10[nrow(stock10),5])+input$years*365*DailyChange10)*input$numberbox10+(as.numeric(stock11[nrow(stock11),5])+input$years*365*DailyChange11)*input$numberbox11+(as.numeric(stock12[nrow(stock12),5])+input$years*365*DailyChange12)+(as.numeric(stock13[nrow(stock13),5])+input$years*365*DailyChange13)*input$numberbox13+(as.numeric(stock14[nrow(stock14),5])+input$years*365*DailyChange14)*input$numberbox14
    } else {
      NewAccountWorth <- (as.numeric(stock1[nrow(stock1),4])+input$years*365*DailyChange1)*input$numberbox1+(as.numeric(stock2[nrow(stock2),4])+input$years*365*DailyChange2)*input$numberbox2+(as.numeric(stock3[nrow(stock3),4])+input$years*365*DailyChange3)*input$numberbox3+(as.numeric(stock4[nrow(stock4),4])+input$years*365*DailyChange4)*input$numberbox4+(as.numeric(stock5[nrow(stock5),5])+input$years*365*DailyChange5)*input$numberbox5+(as.numeric(stock6[nrow(stock6),5])+input$years*365*DailyChange6)*input$numberbox6+(as.numeric(stock7[nrow(stock7),5])+input$years*365*DailyChange7)*input$numberbox7+(as.numeric(stock8[nrow(stock8),5])+input$years*365*DailyChange8)*input$numberbox8+(as.numeric(stock9[nrow(stock9),5])+input$years*365*DailyChange9)*input$numberbox9+(as.numeric(stock10[nrow(stock10),5])+input$years*365*DailyChange10)*input$numberbox10+(as.numeric(stock11[nrow(stock11),5])+input$years*365*DailyChange11)*input$numberbox11+(as.numeric(stock12[nrow(stock12),5])+input$years*365*DailyChange12)+(as.numeric(stock13[nrow(stock13),5])+input$years*365*DailyChange13)*input$numberbox13+(as.numeric(stock14[nrow(stock14),5])+input$years*365*DailyChange14)*input$numberbox14+(as.numeric(stock15[nrow(stock15),5])+input$years*365*DailyChange15)*input$numberbox15
    }
    
    
    showModal(modalDialog(
      title = "Important Message",
      div(
        "Your account worth after ", paste(input$years), "years is", paste0("$",round(NewAccountWorth,2))
      )
    ))
    
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
