#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tsShiny)
# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })

  bb <-format_image(fileName ='/home/hulilei/pkgs/tsShiny/data-raw/shinyInputElement_test/test05-image/www/butterfly.jpg',
       height='200',
       width='250',
       alt='image file text'
  )
 #process.image(input,output,session,imageFile = bb);
  callModule(process.image,'image1',imageFile=bb);

})
