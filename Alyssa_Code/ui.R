
library(shiny)
library(shinydashboard)
library(quantmod)
library(shinyWidgets)
library(dplyr)
library(plotly)

SYMBOLS <- stockSymbols()
YAHOOURLSTART <- "https://finance.yahoo.com/quote/"
SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))

ui <- dashboardPage(
  dashboardHeader(title = "Stock Portfolio Tracker"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard"))
    )
  ),
  dashboardBody(
    fluidPage(
      uiOutput("dropdown"),
      br(),
      uiOutput("text"),
      br(),
      fluidRow(column(3, uiOutput("link")))
    )
  )
)
