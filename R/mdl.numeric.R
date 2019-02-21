#' 定义numeric相应的组件
#'
#' @param id 内码
#' @param label 名称
#'
#' @return 返回值
#' @import shiny
#' @include input.numeric.R
#' @include drawElement.R
#' @export
#'
#' @examples mdl.numeric();
mdl.numeric <- function(id,label='请输入数值:') {
  ns <- NS(id)
  param.input.numeric<- input.numeric(Id = ns('numericInput1'),label = label)
  tagList(drawElement(param.input.numeric));

}
