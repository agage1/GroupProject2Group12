#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
#install.packages("quantmod")
library(shiny)
library(quantmod)
library(fpp3)
SYMBOLS <- stockSymbols()
SYMBOLS <- SYMBOLS %>% 
    mutate(SYMBOLNAMECOMBO = paste(Symbol,"-",Name))

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Search for Stock Symbol"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("select", label = h3("Select a Stock Name"), 
                        choices = sort(SYMBOLS$SYMBOLNAMECOMBO), 
                        selected = 1),
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput(
                "divs",
                width = "100%",
                height = "400px",
                click = NULL,
                dblclick = NULL,
                hover = NULL,
                brush = NULL,
                inline = FALSE
            )
        )
    )
))
