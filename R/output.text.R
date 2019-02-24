#' 定义output.text类，可以实例化
#'
#' @return 返回值
#' @include superTextPlusUI.R
#' @export
#'
#' @examples output.text();
setClass("output.text", contains = 'superTextPlusUI')

#' 定义output.text的同名入口函数
#'
#' @param Id outputId
#' @param inline  是否同一行
#'
#' @return 返回值
#' @export
#'
#' @examples output.text();
output.text <- function(Id='textOutput1',
                        inline=FALSE) {
  res <- new('output.text');
  res2 <- initialize(res,Id=Id,
                         inline=inline)
  return(res2);
}
