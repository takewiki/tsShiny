# 定义顶级的抽象类shinyElement----

#' 定义shinyElement的虚拟类
#'
#' @slot Id character. 内码Id
#'
#' @return 返回值
#' @export
#'
#' @examples shinyElement;
setClass("shinyElement",
                      slot=c(Id = "character"),
                      contains = "VIRTUAL")

