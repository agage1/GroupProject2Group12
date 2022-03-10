server <- function(input, output, session) {
    
    
    
    output$text <- renderUI({HTML(paste(input$select,collapse = "<br/>") )})
    
    output$dropdown <- renderUI(
        pickerInput(
            inputId = "select",
            # multiple = T,
            label = h3("Choose Your Stock"), 
            choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
            selected = SYMBOLS$SYMBOLNAMECOMBO[which(SYMBOLS$Symbol == "MSFT")],
            options = list(
                `live-search` = TRUE
                # ,
                # `selected-text-format` = "count"
            )
        ))
    
    output$dropdown2 <- renderUI({
    
        pickerInput(
            inputId = "select2",
            # multiple = T,
            label = h3("Choose Information to Display"), 
            choices = c("Open", "High", "Low", "Close", "Volume"),  
            selected = "Open",
            options = list(
                `live-search` = TRUE
                # ,
                # `selected-text-format` = "count"
            )
        )})
    
    
    
    output$link <- renderUI({
        req(input$select)
        value <- SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)]
        barelink <- paste0(
            YAHOOURLSTART,
            value
        )
        a(href=barelink,"See your stock on Yahoo Finance.",target="_blank")
    })
    
    output$divs <- renderPlot({
        clean_names <- function(stocks) {
            split_names <- strsplit(names(stocks), split = ".", fixed = TRUE)
            vapply(split_names, function(x) x[2], character(1))
        }
        
        # Get an example stock
        stockInfo <- getSymbols(SYMBOLS[which(SYMBOLS$SYMBOLNAMECOMBO == input$select),1], src = "yahoo", auto.assign = FALSE)
        
        # Show names before cleaning
        names(stockInfo)
        # [1] "GME.Open"     "GME.High"     "GME.Low"     
        # [4] "GME.Close"    "GME.Volume"   "GME.Adjusted"
        
        # Clean names and show output
        names(stockInfo) <- clean_names(stockInfo)
        names(stockInfo)
        plot(stockInfo[,input$select2], 
                                                from = input$dates[1],
                                                to = input$dates[2], 
                                                env = parent.frame(), 
                                                src = "yahoo", 
                                                auto.assign = FALSE, 
                                                auto.update = FALSE, 
                                                verbose = FALSE,main = input$select2)})
    
}