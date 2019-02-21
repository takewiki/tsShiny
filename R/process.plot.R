#' 设置process.plot的处理函数
#'
#' @param input input
#' @param output output
#' @param session session
#' @param plot_obj  plot obj expression
#'
#' @return return value
#' @export
#'
#' @examples process.plot();
process.plot <- function(input,output,session,plot_obj=quote( hist(faithful[, 2] , breaks = 30, col = 'darkgray', border = 'white'))) {
  output$plotOutput1 <-renderPlot({
    plot_obj
  },quoted = TRUE)

}
