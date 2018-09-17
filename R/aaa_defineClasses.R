#1.1 定义文本字段类型的S4----
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


#' 定义新的ui_number_slider option选英
#'
#' @slot inputId character.  内码
#' @slot label character.  标签名称
#' @slot max numeric.  最大值
#' @slot min numeric.  最小值
#' @slot value numeric. 默认值
#' @slot step numeric. 步长
#' @slot width character. 宽度
#'
#' @return 返回值
#' @export
#'
#' @examples ui_number_slider
setClass("ui_number_slider",
                      slot=c(inputId = "character",
                             label = "character",
                             max="numeric",
                             min="numeric",
                             value="numeric",
                             step="numeric",
                             width="character"),
                      prototype = prototype(
                        inputId="sliderInput1",
                        label="number slider1",
                        min=1,
                        max=500,
                        value=300,
                        step=5,
                        width="400px"
                      ) );
# 定义一个密码输入UI 插件 password----

#' 创建日期控件的选项
#'
#' @slot inputId character. 内码
#' @slot label character.  标签
#' @slot value character. 初始值
#' @slot width character. 宽度
#'
#' @return  还回值
#' @export
#'
#' @examples ui_password(aa);
setClass("ui_password",
                      slot=c(inputId = "character",
                             label = "character",
                             value="character",
                             width="character"),
                      prototype = prototype(
                             inputId="password1",
                             label="输入密码:",
                             value="888888",
                             width="100%"
                      ));
#' ui_password的实例化function
#'
#' @param inputId  内码
#' @param label  标签
#' @param value 初始值
#' @param width 控件宽度
#'
#' @return 返回值
#' @export
#'
#' @examples ui_password();
ui_password <- function(inputId="password1",
                        label="输入密码:",
                        value="888888",
                        width="100%") {
  res <- new("ui_password");
  res2 <- initialize(res,
                     inputId=inputId,
                     label=label,
                     value=value,
                     width=width);
  return(res2)


}


# 2.1 定义数值类型的数据，整体数slider----
#' 定义使用创建ui_number_input实例化函数
#'
#' @param inputId 内码
#' @param label  标签
#' @param min  最小值
#' @param max 最大值
#' @param value 默认值
#' @param step 步长
#' @param width  宽度
#'
#' @return 返回值
#' @import shiny
#' @export
#'
#' @examples ui_number_slider();
ui_number_slider <- function(inputId="sliderInput1",
                             label="number slider1",
                             min=1,
                             max=500,
                             value=300,
                             step=5,
                             width="400px"){
     res <- new("ui_number_slider");
     res2 <-initialize(res,
                       inputId=inputId,
                       label=label,
                       min=min,
                       max=max,
                       value=value,
                       step=step,
                       width=width
                       )

}
