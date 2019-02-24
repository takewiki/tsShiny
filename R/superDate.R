#' 定义superDate超级类,不要实例化
#'
#' @slot min Date. 最小日期
#' @slot max Date.  最大日期
#' @slot format character. 日期格式
#' @slot startview character. 展示形式
#' @slot weekstart integer. 一周开始于
#' @slot language character.  英文
#' @slot autoclose logical. 自动关闭
#'
#' @return 返回值
#' @include shinyInputElement.R
#' @export
#'
#' @examples superDate();
setClass("superDate", slots = c(min = "Date",
                                max='Date',
                                format='character',
                                startview='character',
                                weekstart='integer',
                                language='character',
                                autoclose='logical'
                                ),
         contains = 'shinyInputElement')
