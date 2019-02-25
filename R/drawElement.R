#  Define the drawElement interface----
#' 定义drawElement方法的泛型函数Interface
#'
#' @param x 对象的参数，后续可能考虑进行扩展
#'
#' @return 返回值
#' @export
#'
#' @examples drawElemnt();
setGeneric("drawElement",
           signature = "x",
           function(x) standardGeneric("drawElement"))

# define drawElement Method for input.file class -----
#' 定义drawElement方法在input.file上的实现
#'
#' @param x input.file.  input.file类
#'
#' @return 返回值
#' @import shiny
#' @include input.file.R
#' @export
#'
#' @examples  drawElement(input.file());
setMethod("drawElement",
          c("x" = "input.file"),
          function(x){
         fileInput(inputId = x@Id,
                   label =x@label,
                   multiple = x@multiple,
                   accept = x@accept,
                   width = x@width,
                   buttonLabel = x@buttonLabel,
                   placeholder = x@placeholder
                  )
                      })


# 定义drawElement在input.button.download类的上方法----
#' Title
#'
#' @param x input.button.download.
#'
#' @return 返回值
#' @export
#' @include input.button.download.R
#' @import shiny
#'
#' @examples drawElement(input.button.download());
setMethod("drawElement",
          c("x" = "input.button.download"),
          function(x){
          downloadButton(outputId = x@Id,label = x@label,class = x@css_class)
          })

# 定义drawElement方法在output.dataTable类的实现----

#' 定义drawElement方法在output.dataTable类的实现
#'
#' @param x output.dataTable. 类output.dataTable实例对象
#'
#' @return 返回值
#' @import shiny
#' @include output.dataTable.R
#' @export
#'
#' @examples drawElement(output.dataTable());
setMethod("drawElement",
          c("x" = "output.dataTable"),
          function(x){
          dataTableOutput(outputId = x@Id)
          })



# 定义drawElement方法在output.image类上的实现----
#' Title
#'
#' @param x output.image.  output.image类的对象
#'
#' @return 返回值
#' @include output.image.R
#' @import shiny
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "output.image"),
          function(x){
          imageOutput(outputId = x@Id,
                      width = x@width,
                      height = x@height,
                      click = x@click,
                      dblclick = x@dblclick,
                      hover = x@hover,
                      brush = x@brush,
                      inline = x@inline)
          })


# 定义drawElement方法在output.plot类上的实现----
#' Title
#'
#' @param x output.plot.  output.plot类的对象
#'
#' @return 返回值
#' @include output.plot.R
#' @import shiny
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "output.plot"),
          function(x){
            plotOutput(outputId = x@Id,
                        width = x@width,
                        height = x@height,
                        click = x@click,
                        dblclick = x@dblclick,
                        hover = x@hover,
                        brush = x@brush,
                        inline = x@inline)
          })


# 定义drawElement方法在input.numeric上的实现----
#' 定义drawElement方法在input.numeric上的实现
#'
#' @param x input.numeric. 定义对象
#'
#' @return 返回值
#' @include input.numeric.R
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "input.numeric"),
          function(x){
          numericInput(inputId = x@Id,
                       label = x@label,
                       value = x@value,
                       min = x@min,
                       max = x@max,
                       step = x@step,
                       width = x@width)
          })

# 定义drawElement方法在input.slider类的实现----
#' 定义drawElement方法在input.slider类的实现
#'
#' @param x input.slider. 输入对象实例
#'
#' @return 返回值
#' @export
#' @import shiny
#' @include input.slider.R
#'
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "input.slider"),
          function(x){
           sliderInput(inputId = x@Id,
                       label = x@label,
                       min = x@min,
                       max = x@max,
                       value = x@value,
                       step = x@step,
                       round = x@round,
                       width = x@width)
          })



# 定义drawElement方法在input.checkboxGroup上的实现----
#' 定义drawElement方法在input.checkboxGroup上的实现
#'
#' @param x input.checkboxGroup. 实例
#'
#' @return 返回值
#' @include input.checkboxGroup.R
#' @import shiny
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "input.checkboxGroup"),
          function(x){
          checkboxGroupInput(inputId = x@Id,
                             label = x@label,
                             choiceNames = x@choiceNames,
                             choiceValues = x@choiceValues,
                             selected = x@selected,
                             inline = x@inline,
                             width = x@width)
          })


# 定义drawElement方法在input.text上的实现----
#' 定义drawElement方法在input.text上的实现
#'
#' @param x input.text. input.text类
#'
#' @return 返回值
#' @include input.text.R
#' @import shiny
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "input.text"),
          function(x){
            if (x@isPassword == FALSE){
              textInput(inputId = x@Id,
                        label = x@label,
                        value = x@value,
                        width = x@width,
                        placeholder = x@placeholder)

            }else{
              passwordInput(inputId = x@Id,
                            label = x@label,
                            value = x@value,
                            width = x@width,
                            placeholder = x@placeholder)

            }

          })

# 定义drawElement方法在output.print上的实现----
#' 定义drawElement方法在output.print
#'
#' @param x output.print. output.print实例
#'
#' @return 返回值
#' @import shiny
#' @include output.print.R
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "output.print"),
          function(x){
            verbatimTextOutput(outputId = x@Id,
                               placeholder = x@placeholder)

          })

# 定义drawElement方法在output.text上的实现----
#' 定义drawElement方法在output.text上的实现
#'
#' @param x output.text.定义output.text的实例
#'
#' @return 返回值
#' @include output.text.R
#' @import shiny
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "output.text"),
          function(x){
        textOutput(outputId = x@Id,inline = x@inline)

          })

# 定义drawElement方法在input.date上的实现----
#' 定义drawElement方法在input.date上的实现
#'
#' @param x input.date. 实例化对象
#'
#' @return 返回值
#' @import shiny
#' @include input.date.R
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "input.date"),
          function(x){
            dateInput(inputId = x@Id,
                      label = x@label,
                      value = x@value,
                      min = x@min,
                      max = x@max,
                      format = x@format,
                      startview = x@startview,
                      weekstart = x@weekstart,
                      language = x@language,
                      width = x@width,
                      autoclose = x@autoclose)

          })


# 定义drawElement方法在input.dateRange上的实现----
#' Title
#'
#' @param x input.dateRange.
#'
#' @return 返回值
#' @include input.dateRange.R
#' @import shiny
#' @export
#'
#' @examples drawElement();
setMethod("drawElement",
          c("x" = "input.dateRange"),
          function(x){
            dateRangeInput(inputId = x@Id,
                      label = x@label,
                      start=x@start,
                      end=x@end,
                      min = x@min,
                      max = x@max,
                      format = x@format,
                      startview = x@startview,
                      weekstart = x@weekstart,
                      language = x@language,
                      separator = x@separator,
                      width = x@width,
                      autoclose = x@autoclose)

          })
