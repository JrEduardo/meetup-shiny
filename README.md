# shiny-tuto
Eduardo Elias Ribeiro Junior  

Utilização básica do pacote **shiny** para criação de aplicativos web
com R. Este material foi elaborado inicialmente para apresentação no
evento [meetup - useR-SP][meetup], realizado em 09 de outubro de 2015.
Mas está sujeito a atualização, pois pretende ser um guia inicial para
aprendizado **shiny**. A versão utilizada na apresentação está
disponível em [link][meetupedu].

O repositório está estruturado da seguinte forma:

O diretório `apps` é responsável por armazenar os subdiretórios das
aplicações em **shiny** elaboradas (aqui estão os códidos fonte, `ui.R`
e `server.R`), o diretório `images` armazena as images utilizadas para 
explicação e finalmente os slides apresentados no evento são resultados 
da compilação do arquivo `shiny-pres.Rmd`. Porém como esta apresentação 
contém resultados **shiny**, sua visualização será possível a partir de 
`rmarkdown::run("shiny-pres.Rmd")`.


```
## .
## ├── apps
## │   ├── relatorio
## │   │   └── relat.Rmd
## │   ├── shinyggVis
## │   │   ├── server.R
## │   │   └── ui.R
## │   ├── shinyGlobe
## │   │   ├── population.Rds
## │   │   ├── server.R
## │   │   └── ui.R
## │   ├── shinyRGL
## │   │   ├── server.R
## │   │   └── ui.R
## │   └── widgets
## │       ├── server.R
## │       └── ui.R
## ├── images
## │   ├── emacs1.svg
## │   ├── ideia0a.svg
## │   ├── ideia0.svg
## │   ├── ideia2.svg
## │   ├── ideia3.svg
## │   ├── ideia.svg
## │   ├── logo.png
## │   ├── plain0.svg
## │   ├── plain11.svg
## │   ├── plain1.svg
## │   ├── plain21.svg
## │   ├── plain22.svg
## │   ├── plain2.svg
## │   ├── plain31.svg
## │   ├── plain32.svg
## │   ├── plain33.svg
## │   ├── plain3.svg
## │   ├── plain41.svg
## │   ├── plain42.svg
## │   ├── plain43.svg
## │   ├── plain4.svg
## │   ├── reactive0.png
## │   ├── reactive0.svg
## │   ├── reactive1.png
## │   ├── reactive2.png
## │   ├── rstudio2.svg
## │   ├── rstudio.svg
## │   ├── rule1.svg
## │   ├── rule2.svg
## │   ├── rule3.svg
## │   ├── shinyapps.svg
## │   ├── shinygithub.svg
## │   ├── shinyhome.svg
## │   ├── shinypackage.svg
## │   ├── shinyservergithub.svg
## │   ├── shinyserver.svg
## │   └── tipos_apps.svg
## ├── io2013.css
## ├── README.html
## ├── README.md
## ├── README.Rmd
## ├── shiny-pres.html
## └── shiny-pres.Rmd
## 
## 7 directories, 53 files
```

[meetup]: www.meetup.com/pt/useR-SP/
[meetupedu]: www.pet.est.ufpr.br/meetupshiny

