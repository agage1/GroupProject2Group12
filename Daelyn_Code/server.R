server <- function(input, output, session) {
  
  
  
  output$dropdown <- renderUI(
  pickerInput(
    inputId = "select",
    label = h3("Choose Your Stock"), 
    choices = sort(SYMBOLS$SYMBOLNAMECOMBO),
    selected = SYMBOLS$SYMBOLNAMECOMBO[which(SYMBOLS$Symbol == "MSFT")],
    options = list(
      `live-search` = TRUE)
  ))
  
  
  
  output$link <- renderUI({
    req(input$select)
    value <- SYMBOLS$Symbol[which(SYMBOLS$SYMBOLNAMECOMBO == input$select)]
    barelink <- paste0(
      YAHOOURLSTART,
      value
    )
    a(href=barelink,"See your stock on Yahoo Finance.",target="_blank")
  })
  
  
  
}