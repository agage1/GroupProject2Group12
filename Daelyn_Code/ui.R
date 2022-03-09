library(quantmod)

library(shiny)

ui <- fluidPage(
  selectInput("select",
              label = h3("Select A Stock Name"), 
              choices = names(table(SYMBOLS$Name)), 
              selected = 1),
  br(),
  fluidRow(column(3, textOutput("value")))
)