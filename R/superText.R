#' 定义superText超级类
#'
#' @slot value character.  默认值
#' @slot placeholder character. 点位符
#' @slot isPassword 是否为密码
#'
#' @return 返回值
#' @include shinyInputElement.R
#' @export
#'
#' @examples superText();
setClass("superText", slots = c(value = "character",
                                placeholder='character',
                                isPassword='logical'),
         contains='shinyInputElement')
