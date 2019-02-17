#' dataTable预览通用逻辑处理
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param data  数据
#' @param lengthMenu   每页显示条目数
#' @param pageLength 默认条目数
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples process.dataTable.preview();
process.dataTable.preview <- function(input,output,session,
                                      lengthMenu = c(10,50,100,1000,10000),
                                      pageLength = 10
                                      ) {
  output$dataTableOutput1 <- renderDataTable({
    Filedata <- reactive({

      inFile <- input$FileInput1
      if (is.null(inFile))
        return(NULL)
      res <-readxl::read_excel(inFile$datapath)
    })
    Filedata();
  },options = list(orderClasses = TRUE,
                   lengthMenu = lengthMenu,
                   pageLength = pageLength))

}
