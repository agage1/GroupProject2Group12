library(shiny)
library(shinydashboard)
library(quantmod)
library(shinyWidgets)
library(dplyr)
library(plotly)
library(fpp3)

SYMBOLS <- stockSymbols()
YAHOOURLSTART <- "https://finance.yahoo.com/quote/"
SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))
