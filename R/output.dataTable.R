# 定义一个dataTable的预览界面,动态适用于data.frame数据----
#' 定义dataTable的控件
#'
#' @return 返回值
#' @include shinyOutputElement.R
#' @export
#'
#' @examples output.dataTable();
setClass("output.dataTable", contains = 'shinyOutputElement')

# 定义output.dataTale同名的入口函数----
#' 定义output.dataTable的同名入口函数
#'
#' @param Id outputId
#'
#' @return 返回值
#' @export
#'
#' @examples output.dataTable();
output.dataTable <- function(Id='dataTableOutput1') {
  res <- new('output.dataTable');
  res2<- initialize(res,Id=Id);
  return(res2);

}
