#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tsShiny)
run.dataTable <- function (Id){
  callModule(process.dataTable.preview,Id)
}

# Define UI for application that draws a histogram
ui <- fluidPage(

   # Application title
   titlePanel("Old Faithful Geyser Data"),

   # Sidebar with a slider input for number of bins
   sidebarLayout(
      sidebarPanel(
         sliderInput("bins",
                     "Number of bins:",
                     min = 1,
                     max = 50,
                     value = 30),
         mdl.dataTable.preview2('dataTable2',label = 'bb2'),
         mdl.dataTable.preview2('dataTable3',label = 'bb3')
      ),

      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

   output$distPlot <- renderPlot({
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2]
      bins <- seq(min(x), max(x), length.out = input$bins + 1)

      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
   })
   #callModule(process.dataTable.preview,'dataTable2')
   #callModule(process.dataTable.preview,'dataTable3')
   run.dataTable('dataTable2')
   run.dataTable('dataTable3')
}

# Run the application
shinyApp(ui = ui, server = server)

