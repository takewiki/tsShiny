#' 定义plot模板
#'
#' @param id  域名名称
#'
#' @return 返回值
#' @include output.plot.R
#' @include drawElement.R
#' @import shiny
#' @export
#'
#' @examples mdl.plot('p1')
mdl.plot  <- function(id){
  ns <- NS(id)
  param.output.plot<- output.plot(Id =ns('plotOutput1'));
  tagList(drawElement(param.output.plot));
}
