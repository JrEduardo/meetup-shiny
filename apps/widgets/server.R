library(shiny)

##-------------------------------------------
## server.R

shinyServer(
    function(input, output, session){
        output$showWidget <- renderUI({
            switch(input$select,
                   "actionButton" = {
                       actionButton("widget", "Botão de Ação")
                   },
                   
                   "checkboxInput" = {
                       checkboxInput("widget", "Seleção Única")
                   },

                   "checkboxGroupInput" = {
                       checkboxGroupInput("widget",
                                          "Seleção Múltipla",
                                          choices = paste0("opcão", 1:5))
                   },

                   "dateInput" = {
                       dateInput("widget", label = "Seleção de data")
                   },

                   "dateRangeInput" = {
                       dateRangeInput("widget",
                                      "Seleção de intervalo de data")
                   },

                   "fileInput" = {
                       fileInput("widget", "Upload de arquivo")
                   },

                   "numericInput" = {
                       numericInput("widget", "Valor númerico",
                                    value = 10)
                   },

                   "radioButtons" = {
                       radioButtons("widget", "Botões múltipla escolha",
                                    choices = paste0("opção", 1:5))
                   },

                   "selectInput" = {
                       selectInput("widget", "Lista de Seleção",
                                   choices = paste0("opção", 1:50))
                   },

                   "sliderInput" = {
                       sliderInput("widget", "Deslizador", 0, 100,
                                   value = c(20, 80))
                   },

                   "tabsetPanel" = {
                       tabsetPanel(id = "widget",
                                   tabPanel("Opção1", br()),
                                   tabPanel("Opção2", br()),
                                   tabPanel("Opção3", br())
                                   )
                   },

                   "passwordInput" = {
                       passwordInput("widget", label = "Insira a senha")
                   },
            
                   "textInput" = {
                       textInput("widget", "Caixa de Texto",
                                 value = "")
                   })
        })

        output$value <- renderPrint({
            input$widget
        })

        output$str <- renderPrint({
            str(input$widget)
        })

        output$func <- renderPrint({
            cat(input$select, "\n")
        })

        output$args <- renderPrint({
            do.call(args, list(input$select))
        })
    }
)



