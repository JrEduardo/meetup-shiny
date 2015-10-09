##-------------------------------------------
## server.R

library(shiny)
library(shinyRGL)
library(rgl)

shinyServer(function(input, output){
    output$WebGL <- renderWebGL({
        ##-------------------------------------------
        fun <- function(x, y) {
            sin(sqrt(x ^ 2 + y ^ 2))/ sqrt(x ^ 2 + y ^ 2)
        }
        ##-------------------------------------------
        x <- y <- seq(-8, 8, by = 0.25)
        z <- outer(x, y, fun)
        ##-------------------------------------------
        persp3d(x = x, y = y, z = z, main = input$main)
    }) 
})

## Não funciona, issue relatada em
## https://github.com/trestletech/shinyRGL/issues/10
