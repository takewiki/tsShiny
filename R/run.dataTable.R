#' 将run.dataTable定义的相应的后台组件进行处理
#'
#' @param Id 域名空间Id
#'
#' @return 返回值
#' @import shiny
#' @include process.dataTable.preview.R
#' @export
#'
#' @examples run.dataTable.preview2();
run.dataTable.preview2 <- function(Id) {
  callModule(process.dataTable.preview,Id)

}
