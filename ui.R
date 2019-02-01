#library(shiny)
#library(rsconnect)
options(shiny.deprecation.messages=FALSE)
shinyUI(fluidPage(
  
  
  titlePanel("Next Five Probable Words"),
  
  sidebarLayout(
    
    sidebarPanel(textInput('userInput',label="Type here...",value="")),
    
    mainPanel(tableOutput('possible'))
  )
  

))