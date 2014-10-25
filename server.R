library(babynames)
library(ggplot2)

shinyServer(function(input, output) {
  names <- reactive({
    subset(babynames, name == input$Boop)
  })

  output$trend <- renderPlot({
    qplot(year, n, data = names(), geom = "line", color = sex) + 
      theme_bw()
  })
  
  output$total <- renderText({
    sum(names()$n)
  })
  
  output$peak <- renderText({
    names()$year[which.max(names()$n)]
  })

})


#Code used from RUser Conf 2014
