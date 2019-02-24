#' 定义superTextPlusUI超级类,不可实例化
#'
#' @slot inline logical. 是否同一行，横向
#'
#' @return 返回值
#' @import shiny
#' @include shinyOutputElement.R
#' @export
#'
#' @examples superTextPlusUI
setClass("superTextPlusUI", slots = c(inline = "logical"),
         contains = 'shinyOutputElement')
