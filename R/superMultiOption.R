#' 定义superMultiOption超级类,不可实例化
#'
#' @slot choiceNames list. 列表可以是文字或icon
#' @slot choiceValues list. 必须是文字列表
#' @slot selected character.  默认选项
#' @slot inline logical.     按行展示
#'
#' @return 返回值
#' @include shinyInputElement.R
#' @export
#'
#' @examples  superMultiOption();
setClass("superMultiOption", slots = c(choiceNames = "list",
                                       choiceValues='list',
                                       selected='character',
                                       inline='logical'
                                      ),
         contains = 'shinyInputElement')
