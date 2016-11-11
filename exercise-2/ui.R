# UI for scatterplot
require(shiny)
# Create a shinyUI with a fluidPage layout
shinyUI(fluidPage(
  
  # Add a numericInput to choose the number of observations
  numericInput("num", label="Number of observations", value = 100),
  
  # Add a selectInput that allows you to select a color from a list of choices
  selectInput('color', label = 'Color', choices = list("Red" = 'red', 'Blue' = 'blue', 'Green' = 'green')),
  
  # Plot the output with the name "scatter"
  plotOutput('scatter')
  
))