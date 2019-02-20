#' 定义superImagePlot超级类，不支持实例化
#'
#' @slot width character. 宽度
#' @slot height character. 高度
#' @slot click character. 单击
#' @slot dblclick character. 双击
#' @slot hover character.  悬停
#' @slot hoverDelay character.  延时悬停
#' @slot hoverDelayType character. 延时类型
#' @slot brush character.    刷子
#' @slot clickId character.  单击ID
#' @slot hoverId character.  双击ID
#' @slot inline logical.    是否一行还是多选
#'
#' @return 返回值
#' @include shinyOutputElement.R
#' @export
#'
#' @examples superImagePlot();
setClass("superImagePlot", slots = c(width = "character",
                                     height='character',
                                     click='character',
                                     dblclick='character',
                                     hover='character',
                                     hoverDelay='character',
                                     hoverDelayType='character',
                                     brush='character',
                                     clickId='character',
                                     hoverId='character',
                                     inline='logical'),
         contains = 'shinyOutputElement')
