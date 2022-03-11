library(shiny)
library(shinydashboard)
library(quantmod)
library(shinyWidgets)
library(dplyr)
library(plotly)
library(fpp3)
library(xts)
library(lubridate)

SYMBOLS <- stockSymbols()
SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))
