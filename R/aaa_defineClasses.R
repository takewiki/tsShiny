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
                      )
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
#' @examples ui_text(inputId = 'aa',label = "bb",value = 'cc',width = "80%");
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

#3.1 定义日期型的控件ui_date 选项----
#' 定义日期型的输入控件ui_date S4类
#'
#' @slot inputId character.内码
#' @slot label character. 标签
#' @slot value character.  默认值
#' @slot min character. 最小值
#' @slot max character. 最大值
#' @slot format character. 日期格式
#' @slot startview character. 日历形式month,year,decade
#' @slot weekstart integer. 0表示周日开始，1表示周1开始
#' @slot language character. 语言en,zh-CN,zh-TW
#' @slot width character. 宽度
#' @slot autoclose logical. 是否自动关闭
#'
#' @return 返回值
#' @export
#'
#' @examples ui_date(x);
setClass("ui_date", slots = c(inputId = "character",
                              label="character",
                              value="character",
                              min="character",
                              max="character",
                              format="character",
                              startview="character",
                              weekstart="integer",
                              language="character",
                              width="character",
                              autoclose="logical"),
                    prototype = prototype(
                              inputId="date1",
                              label="输入日期:",
                              value="",
                              min="1984-01-01",
                              max="2100-12-31",
                              format="yyyy-mm-dd",
                              startview="month",
                              weekstart=0L,
                              language="zh-CN",
                              width="100%",
                              autoclose=TRUE
                    ))

# ui_date实例化入口func ----
#' ui_date实例化入口func
#'
#' @param inputId 内码
#' @param label 标签
#' @param value 默认值
#' @param min  最小值
#' @param max  最大值
#' @param format 日期格式
#' @param startview 日历格式
#' @param weekstart 开始于
#' @param width 宽度
#' @param language 日历语言
#'
#' @return 返回值
#' @export
#'
#' @examples ui_date();
ui_date <- function(inputId="date1",
                    label="输入日期:",
                    value="",
                    min="1984-01-01",
                    max="2100-12-31",
                    format="yyyy-mm-dd",
                    startview="month",
                    weekstart=0L,
                    language="zh-CN",
                    width="100%",
                    autoclose=TRUE) {
  res <- new("ui_date");
  res2 <- initialize(res,
                     inputId=inputId,
                     label=label,
                     value=value,
                     min=min,
                     max=max,
                     format=format,
                     startview=startview,
                     weekstart=weekstart,
                     language=language,
                     width=width,
                     autoclose=autoclose);
  return(res2);

}

# 定义一个文件上传控件ui_file----
#' Title
#'
#' @slot inputId character. 内码
#' @slot label character.  标签
#' @slot multiple logical. 是否支持批量上传
#' @slot accept character.  是否指定文件后缀名
#' @slot width character.   宽度
#' @slot buttonLabel character.   按纽文字内容
#' @slot placeholder character.   占位符内容
#'
#' @return 返回值
#' @export
#'
#' @examples  ui_file("sample.xlsx")
setClass("ui_file", slots = c(inputId = "character",
                              label="character",
                              multiple="logical",
                              accept="character",
                              width="character",
                              buttonLabel="character",
                              placeholder="character"
                              ),
                  prototype = prototype(
                              inputId="fileInput1",
                              label="上传文件:",
                              multiple=FALSE,
                              accept="",
                              width="100%",
                              buttonLabel="浏览...",
                              placeholder="没有选中任何文件！"

                  ))
#' ui_file上传控件的入口实例化函数
#'
#' @param inputId  内码
#' @param label  标签
#' @param multiple  是否批量上传
#' @param accept  是否指定文件后缀名
#' @param width  是否指定宽度
#' @param buttonLabel  按纽标签名称
#' @param placeholder   点位符内容
#'
#' @return 返回值
#' @export
#'
#' @examples  ui_file();
ui_file <- function(inputId="fileInput1",
                    label="上传文件:",
                    multiple=FALSE,
                    accept="",
                    width="100%",
                    buttonLabel="浏览...",
                    placeholder="没有选中任何文件！") {

  res <- new("ui_file");
  res2 <- initialize(res,
                     inputId=inputId,
                     label=label,
                     multiple=multiple,
                     accept=accept,
                     width=width,
                     buttonLabel=buttonLabel,
                     placeholder=placeholder)
}
