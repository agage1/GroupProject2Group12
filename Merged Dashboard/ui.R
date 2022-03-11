ui <- dashboardPage(
  dashboardHeader(title = "Stock Portfolio Tracker"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Choose A Stock", tabName = "Tab 1", icon = icon("chart-line"))
    )
  ),
  dashboardBody(
    fluidPage(
      mainPanel(
        uiOutput("dropdown"),
        br(),
        uiOutput("text"),
        br(),
        fluidRow(column(4, uiOutput("link"))),
        br(),
        dateRangeInput("dates", label = h3("Date range"), start = "2010-01-01"),
        br(),                
        uiOutput("dropdown2"),
        br(),
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