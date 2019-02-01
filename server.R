shinyServer(function(input, output, session) {
  
  resultList <- reactive({
    as.character(scoreNgrams(input$userInput)$nextword)[1:5]
    })
  
  output$possible <- renderTable({
    outputTable <- data.frame(resultList())
    outputTable$Order = (1:5)
    outputTable <- outputTable[c(2,1)]
    colnames(outputTable) <- c("Rank", "Next Predicted Word")
    outputTable
  }
  )

})