server <- function(input, output, session) {
  # output$value <- renderPrint({ SYMBOLS$Symbol[which(SYMBOLS$Name == input$select)] })
  
  output$dropdown <- renderUI(
  pickerInput(
    inputId = "select",
    label = h3("Choose Your Stock"), 
    choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
    options = list(
      `live-search` = TRUE)
  ))
  
  output$link <- renderUI({
    req(input$select)
    value <- SYMBOLS$Symbol[which(SYMBOLS$Name == input$select)]
    
    barelink <- paste0(
      YAHOOURLSTART,
      value
    )
    
    a(href=barelink,"See your stock on Yahoo Finance.",target="_blank")
    
  })
}


