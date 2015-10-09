##-------------------------------------------
## server.R

library(googleVis)
library(shiny)

shinyServer(function(input, output) {
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })
  
  output$view <- renderGvis({
    gvisScatterChart(datasetInput(),
                     options=list(width=800, height=600))
  })
})

