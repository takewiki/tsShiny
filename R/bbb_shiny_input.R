# 定义shiny_input Generic Func----
#' 定义通用的输入函数
#'
#' @param x 对象签名
#'
#' @return 返回值
#' @include aaa_defineClasses.R
#' @export
#'
#' @examples shiny_input(bbc);
setGeneric("shiny_input",
           signature = "x",
           function(x) standardGeneric("shiny_input"));

# shiny_input for class ui_text----
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
# 定义shiny_input在ui_password类上的实现-----
#' 定义shiny_input对ui_password的实现
#'
#' @param x ui_password. 实例化对象ui_password
#'
#' @return 返回值
#' @export
#'
#' @examples shiny_input(x);
setMethod("shiny_input",
          c("x" = "ui_password"),
          function(x){
            passwordInput(inputId = x@inputId,
                      label= x@label,
                      value=x@value,
                      width = x@width)
          });



# 定义shiny_input在ui_number_slider上的实现代码----
#' 定义shiny_input在ui_number_slider上的实现代码
#'
#' @param x ui_number_slider. ui_numer_slider实例
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples shiny_input(bb);
setMethod("shiny_input",
          c("x" = "ui_number_slider"),
          function(x){
            sliderInput(inputId = x@inputId,
                        label = x@label,
                        min=x@min,
                        max=x@max,
                        value=x@value,
                        step=x@step,
                        width = x@width)

                      });
