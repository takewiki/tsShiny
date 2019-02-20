# 下载文件处理逻辑，生成相应的Excel文件----
#' 定义相应的处理
#'
#' @param input 输入
#' @param output 输出
#' @param session 全文
#' @param data 数据
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples process.button.download();
process.button.download <- function(input,output,session,data,filename='下载文件.xlsx') {
  output$downloadButton1 <- downloadHandler(filename = filename,
                                            content =function(file){
                                              openxlsx::write.xlsx(data,file)
                                            } )

}
