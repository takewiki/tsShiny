
#' 定义ui_text iption的特殊类，用于存储相应的界面数据
#'
#' @slot inputId character. 内码Id,用于input$inputId
#' @slot label character.   标签
#' @slot value character.   默认值
#' @slot width character.  文本框宽度，默认为100%或400px
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples ui_text("aaaa");
setClass("ui_text",
                      slot=c(inputId = "character",
                             label = "character",
                             value="character",
                             width="character"
                             ),
                       prototype = prototype(
                         inputId="txt1",
                         label="text1_caption",
                         value="",
                         width="100%"
                       )
                      );
#' 定义一个实例化函数，用于数据存储
#'
#' @param inputId 标签内码
#' @param label 标签标题
#' @param value  默认值
#' @param width 宽度
#'
#' @return 返回值
#' @export
#'
#' @examples bb <-ui_text(inputId = 'aa',label = "bb",value = 'cc',width = "80%");
ui_text <- function( inputId="txt1",
                     label="text1_caption",
                     value="",
                     width="100%"){
  res <- new("ui_text");
  res2 <- initialize(res,
                     inputId=inputId,
                     label=label,
                     value=value,
                     width=width);

}



