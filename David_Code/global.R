library(dplyr)
library(plotly)
library(fpp3)
library(xts)
library(lubridate)
library(quantmod)

SYMBOLS <- stockSymbols()

YAHOOURLSTART <- "https://finance.yahoo.com/quote/"

SYMBOLS <- SYMBOLS %>% 
  mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))

clean_names <- function(stocks) {
  split_names <- strsplit(names(stocks), split = ".", fixed = TRUE)
  vapply(split_names, function(x) x[2], character(1))
}