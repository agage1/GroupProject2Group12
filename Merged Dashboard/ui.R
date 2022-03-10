
shinyUI(fluidPage(

    titlePanel("Search for Stock Symbol"),

    sidebarLayout(
        sidebarPanel(
            selectInput("select", label = h3("Select a Stock Name"), 
                        choices = sort(SYMBOLS$SYMBOLNAMECOMBO), 
                        selected = 1),
        ),

        mainPanel(
            uiOutput("divs")
        )
    )
))
