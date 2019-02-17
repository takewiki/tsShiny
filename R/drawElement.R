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

