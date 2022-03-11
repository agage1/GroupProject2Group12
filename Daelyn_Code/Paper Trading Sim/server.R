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
  
observeEvent(input$select,{
  DoesItWork <- length(input$select)
  
  blegh <- 1:15
  for(trials in blegh){
    thingy <- paste0("numberinput",trials)
    output[[thingy]] <- NULL
  }
  
if (DoesItWork>0){
for (trial in 1:DoesItWork){
  word <- paste0("numberinput",trial)
  boxID <- paste0("sharesbox" ,trial)
  # stuff <<- sort(input$select)
  output[[word]] <- renderUI(
    numericInput(
      inputId = boxID,
      # label = paste("How Many Shares of",SYMBOLS$Name[which(SYMBOLS$SYMBOLNAMECOMBO == stuff[trial])],"Do You Want?"),
      label = paste("How Many Shares of",boxID,"Do You Want?"),
      value = 20,
      min = 1,
      max = 10000
    )
  )
}
}
})
  
}