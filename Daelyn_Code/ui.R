ui <- fluidPage(
  uiOutput("dropdown"),
  br(),
  uiOutput("text"),
  br(),
  fluidRow(column(3, uiOutput("link")))
)