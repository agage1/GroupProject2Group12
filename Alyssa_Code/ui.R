
ui <- dashboardPage(
  dashboardHeader(title = "Stock Portfolio Tracker"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Choose A Stock", tabName = "Tab 1", icon = icon("fa-solid fa-link"),
               menuSubItem("View online", tabName = "SubTab1")),
      menuItem("Visualization", tabName = "Tab 2", icon = icon("chart-line"))
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "Tab 1",
              h5("Search for a stock by Company Name or Ticker.", align = "center"),
              h4("View the stock on Yahoo Finance.", align = "center"),
              h3("Click on 'Visualization' tab to view graph.", align = "center")),
      # First subtab content
      tabItem(tabName = "SubTab1",
              h2("Choose A Stock", align = "center"),
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
      # Second tab content
      tabItem(tabName = "Tab 2",
              h2("Visualization"),
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
      ) 
    )
  )
)