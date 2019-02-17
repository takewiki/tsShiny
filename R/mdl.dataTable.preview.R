#' 定义数据预览的逻辑
#'
#' @param id 预算组件的ID
#' @param label  输入文件的标签
#'
#' @return 返回值
#' @include input.file.R
#' @include output.dataTable.R
#' @import shiny
#' @export
#'
#' @examples mdl.dataTable.preview();
mdl.dataTable.preview <- function(id,label) {
  ns <- NS(id)
  param.file <- input.file(Id = ns('FileInput1'),label = label);
  param.dataTable <-output.dataTable(Id = ns('dataTableOutput1'));
  tagList(
    drawElement(param.file),
    drawElement(param.dataTable)
  )

}
