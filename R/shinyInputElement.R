# 定义抽象类shinyInputUI----
#' 定义类shinyInputUI,不用于实例化
#'
#' @slot label character.  标题名
#' @slot width character.  宽度
#'
#' @return 返回值
#' @export
#' @include shinyElement.R
#'
#' @examples shinyInputElement();
setClass("shinyInputElement", slots = c(label = "character",
                                   width='character'),
         contains = "shinyElement")
