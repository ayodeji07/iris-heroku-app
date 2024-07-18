library(shiny)

# Define UI
shinyUI(pageWithSidebar(
  headerPanel("Predicting Iris Species"),
  sidebarPanel(
    numericInput('id1', 'Numeric input, Sepal Length', 0, min = 0, max = 10),
    numericInput('id2', 'Numeric input, Sepal Width', 0, min = 0, max = 10),
    numericInput('id3', 'Numeric input, Petal Length', 0, min = 0, max = 10),
    numericInput('id4', 'Numeric input, Petal Width', 0, min = 0, max = 10),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered'),
    verbatimTextOutput("oid1"),
    h4('You entered'),
    verbatimTextOutput("oid2"),
    h4('You entered'),
    verbatimTextOutput("oid3"),
    h4('You entered'),
    verbatimTextOutput("oid4"),
    h4('Which resulted in a prediction of '),
    verbatimTextOutput("prediction")
  )
))
