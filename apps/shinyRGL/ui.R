##-------------------------------------------
## ui.R

library(shiny)
library(shinyRGL)

shinyUI(fluidPage(
    textInput("main", "Título", ""),

    webGLOutput("WebGL")
))

## Não funciona, issue relatada em
## https://github.com/trestletech/shinyRGL/issues/10
