ui <- dashboardPage(
    dashboardHeader(title = "Stock Portfolio Tracker"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("App Instructions", tabName = "Tab1"),
            menuItem("Work with Chosen Stocks", tabName = "Tab2", icon = icon("dollar"),
                     menuSubItem("View online", tabName = "SubTab1", icon = icon("link")),
                     menuSubItem("Paper Trading Simulation", tabName = "SubTab2", icon = icon("chart-line")),
                     menuSubItem("Visualize with Graph", tabName = "SubTab3", icon = icon("chart-line")),
                     menuSubItem("See Historical Dividends", tabName = "SubTab4", icon = icon("chart-line"))
            )
        )
    ),
    dashboardBody(
        tabItems(
            # First tab content
            tabItem(tabName = "Tab1",
                    h3("Search for a stock by Company Name or Ticker.", align = "center"),
                    h3("View the stock on Yahoo Finance.", align = "center"),
                    h3("Click on 'Visualization' tab to view graph.", align = "center")),
            # Second tab content
            tabItem(tabName = "Tab2",
            ),
            # First subtab content
            tabItem(tabName = "SubTab1",
                    fluidPage(
                        box(
                            uiOutput("dropdown"),
                            br(),
                            uiOutput("text"),
                            br(),
                            fluidRow(column(4, uiOutput("link"))),
                            br()
                        )
                    )
            ),
            # Second subtab content
            tabItem(tabName = "SubTab2",
            ),
            # Third subtab content
            tabItem(tabName = "SubTab3",
                    fluidPage(
                        box(
                            dateRangeInput("dates", label = h3("Date range"), start = "2010-01-01"),
                            br(),                
                            uiOutput("dropdown2"),
                            br()
                        ),
                        box(
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
            ),
            # Fourth subtab content
            tabItem(tabName = "SubTab4",
                    fluidPage(
                        box(
                            dateRangeInput("dates2", label = h3("Date range"), start = "2010-01-01"),
                            br(), 
                        ),
                        box(textOutput("realdivs"))))
        )
    )
)