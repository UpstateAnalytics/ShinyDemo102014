shinyUI(fluidPage(

  titlePanel("What's in a name?"),

  sidebarLayout(
    sidebarPanel(
      textInput("Boop", "Name:", value = "Garrett"),
      h1(textOutput("total")),
      "people had this name",
      h1(textOutput("peak")),
      "peak year"
    ),
    mainPanel(
      plotOutput("trend")
    )
  )
))
