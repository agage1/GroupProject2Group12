ui <- fluidPage(
  uiOutput("dropdown"),
  br(),
  fluidRow(column(3, uiOutput("link")))
)