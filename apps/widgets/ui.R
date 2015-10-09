library(shiny)

##-------------------------------------------
## ui.R

choices <- list("Action Button" = "actionButton",
                "Checkbox" = "checkboxInput",
                "Checkbox Group" = "checkboxGroupInput",
                "Data" = "dateInput",
                "Data Range" = "dateRangeInput",
                "Upload" = "fileInput",
                "Numeric" = "numericInput",
                "Radio Buttons" = "radioButtons",
                "Select" = "selectInput",
                "Slider" = "sliderInput",
                "tabSet" = "tabsetPanel",
                "Password" = "passwordInput",
                "Text" = "textInput")

shinyUI(
    fluidPage(

        h1("Shiny Widgets", style = "font-family: 'Ubuntu Light';
        color: #fff; text-align: center;
        background-color: #C8C8C8;
        padding: 20px; font-weight: bold;"),

        sidebarPanel(

            h3("Selecione o widget",
               style = "text-align: center;"),
            
            selectInput("select", label = "",
                        choices = choices),
            
            hr(),
            p("Widget:", style = "color:#888888; text-align: center;"),
            wellPanel(
                uiOutput("showWidget")
            )
        ),

        mainPanel(
            hr(),
            p("Valor do Widget:", style = "color:#888888;"),
            verbatimTextOutput("value"),

            hr(),
            p("Estrutura do Widget:", style = "color:#888888;"),
            verbatimTextOutput("str"),
            
            hr(),
            p("Função para criação", style = "color:#888888;"),
            verbatimTextOutput("func"),
            
            hr(),
            p("Argumentos da função:", style = "color:#888888;"),
            verbatimTextOutput("args")
        )
    )
)
