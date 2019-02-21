#' 定义数值型的超级类，不可实例化
#'
#' @slot value numeric. 默认值
#' @slot min numeric.   最大值
#' @slot max numeric.   最小值
#' @slot step numeric.  步长
#'
#' @return 返回值
#' @include shinyInputElement.R
#' @export
#'
#' @examples superNumeric();
setClass("superNumeric", slots = c(value = "numeric",
                                   min='numeric',
                                   max='numeric',
                                   step='numeric'),
         contains = 'shinyInputElement')
