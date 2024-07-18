library(tidyverse)
library(shiny)

# Read in the RF model
model <- readRDS("model.rds")

# Define server
shinyServer(function(input, output, session) {
  output$oid1 <- renderPrint({ input$id1 })
  output$oid2 <- renderPrint({ input$id2 })
  output$oid3 <- renderPrint({ input$id3 })
  output$oid4 <- renderPrint({ input$id4 })
  
  output$prediction <- renderPrint({
    # Create a data frame from user inputs
    new_data <- data.frame(
      Sepal.Length = as.numeric(input$id1),
      Sepal.Width = as.numeric(input$id2),
      Petal.Length = as.numeric(input$id3),
      Petal.Width = as.numeric(input$id4)
    )
    
    # Make a prediction
    prediction <- predict(model, new_data)
    
    # Display the prediction result
    as.character(prediction$.pred_class)
  })
})