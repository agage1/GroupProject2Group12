library(shiny)
library(quantmod)
library(shinyWidgets)
library(dplyr)
SYMBOLS <- stockSymbols()
YAHOOURLSTART <- "https://finance.yahoo.com/quote/"

SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))