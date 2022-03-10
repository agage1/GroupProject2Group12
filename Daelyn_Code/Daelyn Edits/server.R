#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$divs <- renderPlot(plot(getDividends(SYMBOLS[which(SYMBOLS$SYMBOLNAMECOMBO == input$select),1], 
                                                from = input$dates[1],
                                                to = input$dates[2], 
                                                env = parent.frame(), 
                                                src = "yahoo", 
                                                auto.assign = FALSE, 
                                                auto.update = FALSE, 
                                                verbose = FALSE),main = "Dividends Since 2010"))
    })
