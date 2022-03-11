server <- function(input, output, session) {
  output$text <- renderUI({
    HTML(paste(input$select, collapse = "<br/>"))
  })

  output$dropdown <- renderUI(
    pickerInput(
      inputId = "select",
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

  observeEvent(input$select, {
    DoesItWork <- length(input$select)

    # blegh <- 1:15
    # for (trials in blegh) {
    #   thingy <- paste0("numberinput", trials)
    #   output[[thingy]] <- NULL
    # }
    # 
    # if (DoesItWork > 0) {
    #   for (trial in 1:DoesItWork) {
    #     word <- paste0("numberinput", trial)
    #     boxID <- paste0("sharesbox", trial)
    #     # stuff <<- sort(input$select)
    #     output[[word]] <- renderUI(
    #       numericInput(
    #         inputId = boxID,
    #         # label = paste("How Many Shares of",SYMBOLS$Name[which(SYMBOLS$SYMBOLNAMECOMBO == stuff[trial])],"Do You Want?"),
    #         label = paste("How Many Shares of", boxID, "Do You Want?"),
    #         value = 20,
    #         min = 1,
    #         max = 10000
    #       )
    #     )
    #   }
    # }



    if (DoesItWork == 1) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 2) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 3) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 4) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 5) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 6) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 7) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 8) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 9) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 10) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 11) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 12) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 13) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput13 <- renderUI({
        numericInput(
          inputId = "numberbox13",
          label = paste("How Many Shares of", input$select[13], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else if (DoesItWork == 14) {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput13 <- renderUI({
        numericInput(
          inputId = "numberbox13",
          label = paste("How Many Shares of", input$select[13], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput14 <- renderUI({
        numericInput(
          inputId = "numberbox14",
          label = paste("How Many Shares of", input$select[14], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    } else {
      output$numberinput1 <- renderUI({
        numericInput(
          inputId = "numberbox1",
          label = paste("How Many Shares of", input$select[1], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput2 <- renderUI({
        numericInput(
          inputId = "numberbox2",
          label = paste("How Many Shares of", input$select[2], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput3 <- renderUI({
        numericInput(
          inputId = "numberbox3",
          label = paste("How Many Shares of", input$select[3], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput4 <- renderUI({
        numericInput(
          inputId = "numberbox4",
          label = paste("How Many Shares of", input$select[4], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput5 <- renderUI({
        numericInput(
          inputId = "numberbox5",
          label = paste("How Many Shares of", input$select[5], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput6 <- renderUI({
        numericInput(
          inputId = "numberbox6",
          label = paste("How Many Shares of", input$select[6], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput7 <- renderUI({
        numericInput(
          inputId = "numberbox7",
          label = paste("How Many Shares of", input$select[7], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput8 <- renderUI({
        numericInput(
          inputId = "numberbox8",
          label = paste("How Many Shares of", input$select[8], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput9 <- renderUI({
        numericInput(
          inputId = "numberbox9",
          label = paste("How Many Shares of", input$select[9], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput10 <- renderUI({
        numericInput(
          inputId = "numberbox10",
          label = paste("How Many Shares of", input$select[10], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput11 <- renderUI({
        numericInput(
          inputId = "numberbox11",
          label = paste("How Many Shares of", input$select[11], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput12 <- renderUI({
        numericInput(
          inputId = "numberbox12",
          label = paste("How Many Shares of", input$select[12], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput13 <- renderUI({
        numericInput(
          inputId = "numberbox13",
          label = paste("How Many Shares of", input$select[13], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput14 <- renderUI({
        numericInput(
          inputId = "numberbox14",
          label = paste("How Many Shares of", input$select[14], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
      output$numberinput15 <- renderUI({
        numericInput(
          inputId = "numberbox15",
          label = paste("How Many Shares of", input$select[15], "Do You Want?"),
          value = 20,
          min = 1,
          max = 10000
        )
      })
    }
  })
}
