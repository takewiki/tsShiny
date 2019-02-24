#' 定义print组件
#'
#' @param Id 域名内码
#'
#' @return 返回值
#' @export
#'
#' @examples mdl.print();
mdl.print <- function(Id) {
  ns <- NS(Id)
  param.output.print<- output.print(Id =ns('printOutput1'));
  tagList(drawElement(param.output.print));

}
