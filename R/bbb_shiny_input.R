#' 定义通用的输入函数
#'
#' @param x 对象签名
#'
#' @return 返回值
#' @include aaa_defineClasses.R
#' @export
#'
#' @examples
setGeneric("shiny_input",
           signature = "x",
           function(x) standardGeneric("shiny_input"));

#' shiny_input用于ui_text的处理方法定义
#'
#' @param x ui_text.
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples shiny_input(bb);
setMethod("shiny_input",
          c("x" = "ui_text"),
          function(x){
            textInput(inputId = x@inputId,
                      label= x@label,
                      value=x@value,
                      width = x@width)
                      });

