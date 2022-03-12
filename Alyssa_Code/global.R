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

YAHOOURLSTART <- "https://finance.yahoo.com/quote/"
MotleyUrlStart <- "https://www.fool.com/quote/"
ZacksUrlStart <- "https://www.zacks.com/stock/quote/"

SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))

clean_names <- function(stocks) {
  split_names <- strsplit(names(stocks), split = ".", fixed = TRUE)
  vapply(split_names, function(x) x[2], character(1))
}
