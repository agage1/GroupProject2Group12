
ui <- dashboardPage(
  dashboardHeader(title = "Stock Portfolio Tracker"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("App Instructions", tabName = "Tab1"),
      menuItem("Work with Chosen Stocks", tabName = "Tab2", icon = icon("dollar"),
               menuSubItem("View online", tabName = "SubTab1", icon = icon("link")),
               menuSubItem("Visualize with Graph", tabName = "SubTab2", icon = icon("chart-line")),
               menuSubItem("See Historical Dividends", tabName = "SubTab3", icon = icon("chart-line")),
               menuSubItem("Paper Trading Simulation", tabName = "SubTab4", icon = icon("chart-line"))
      )
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "Tab1",
              h3("Welcome to your customizable stock portfolio tracker.", align = "center"),
              h4("Under the 'Work with Chosen Stocks' tab:", align = "center"),
              h4("Search for a stock by Company Name or Ticker.", align = "center"),
              h4("View the current stock price and data from various sources.", align = "center"),
              h4("Generate a graph for selected information about the stock.", align = "center"),
              h4("Visualize historical dividends for the chosen stock.", align = "center"),
              h4("Run a paper trading simulation with up to 15 selected stocks.", align = "center")
      ),
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
                  fluidRow(column(5, uiOutput("link"))),
                  fluidRow(column(5, uiOutput("link2"))),
                  fluidRow(column(5, uiOutput("link3"))),
                  br()
                )
              )
      ),
      # Second subtab content
      tabItem(tabName = "SubTab2",
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
      # Third subtab content
      tabItem(tabName = "SubTab3",
              fluidPage(
                box(
                  dateRangeInput("dates2", label = h3("Date range"), start = "2010-01-01"),
                  br(), 
                ),
                box(plotOutput("realdivsgraph"),
                    br(),
                    box(textOutput("realdivs"))
                )
              )
      ),
      # Fourth subtab content
      tabItem(tabName = "SubTab4",
              fluidPage(
                mainPanel(
                  uiOutput("dropdown3"),
                  br(),
                  uiOutput("text2"),
                  br(),
                  uiOutput("numberinput1"),
                  uiOutput("numberinput2"),
                  uiOutput("numberinput3"),
                  uiOutput("numberinput4"),
                  uiOutput("numberinput5"),
                  uiOutput("numberinput6"),
                  uiOutput("numberinput7"),
                  uiOutput("numberinput8"),
                  uiOutput("numberinput9"),
                  uiOutput("numberinput10"),
                  uiOutput("numberinput11"),
                  uiOutput("numberinput12"),
                  uiOutput("numberinput13"),
                  uiOutput("numberinput14"),
                  uiOutput("numberinput15"),
                  actionButton(inputId = "confirm",label = "Confirm Share Amounts"),
                  br(),
                  br(),
                  uiOutput("duration"),
                  uiOutput("confirmduration"),
                  br(),
                  br(),
                  uiOutput("description"),
                  br(),
                  uiOutput("buttonbutton")
                )
              )
      )
    )
  )
)
