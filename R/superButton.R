# 定义superButton超级类，不支持虚拟化----
#' 定义superButton虚拟类
#'
#' @slot icon character. 图标
#' @slot ... list.  更新参数
#'
#' @return 返回值
#' @include shinyInputElement.R
#' @export
#'
#' @examples superButton
setClass("superButton", slots = c(icon = "character"
                                  ),
         contains = 'shinyInputElement')
