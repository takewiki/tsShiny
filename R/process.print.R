#' 定义相应的处理数据
#'
#' @param input 输入
#' @param output 输出
#' @param session 会议
#' @param data   数据
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples process.print();
process.print <- function(input,output,session,data=letters) {
  output$printOutput1 <- renderPrint({
     data;
  })

}
