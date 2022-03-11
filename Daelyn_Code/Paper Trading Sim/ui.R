ui <- dashboardPage(
  dashboardHeader(title = "Stock Portfolio Tracker"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Paper Trading Simulation", tabName = "Tab 1", icon = icon("chart-line"))
    )
  ),
  dashboardBody(
    fluidPage(
      mainPanel(
        uiOutput("dropdown"),
        br(),
        uiOutput("text"),
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
        uiOutput("duration"),
        uiOutput("confirmduration")
        )
      )
    )
  )