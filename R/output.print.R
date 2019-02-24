#' 定义output.print基类,可以实例化
#'
#' @slot placeholder logical. 点位符
#'
#' @return 返回值
#' @include shinyOutputElement.R
#' @export
#'
#' @examples output.print();
setClass("output.print", slots = c(placeholder = "logical"),
         contains = 'shinyOutputElement')


#' 定义output.print的同名入口函数
#'
#' @param Id outputId
#' @param placeholder 占位符
#'
#' @return 返回值
#' @export
#'
#' @examples output.print()
output.print <- function(Id='verbatimTextOutput1',
                         placeholder=FALSE) {
res <- new('output.print');
res2 <- initialize(res,Id=Id,placeholder=placeholder);
return(res2);

}
