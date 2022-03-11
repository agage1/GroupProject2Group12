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