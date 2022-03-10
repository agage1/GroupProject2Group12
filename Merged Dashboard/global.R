library(shiny)
library(quantmod)
library(fpp3)
SYMBOLS <- stockSymbols()
SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))