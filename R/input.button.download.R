# 定义一下下载按纽输入控件----
#' 定义input.button.download输入控件
#'
#' @slot class character. css类名称
#'
#' @return 返回值
#' @include superButton.R
#' @export
#'
#' @examples input.button.download()
setClass("input.button.download", slots = c(css_class = "character"),
         contains = 'superButton')

# 定义input.button.download同名的入口函数
#' 定义input.button.download的同名的入口函数
#'
#' @param Id  内码
#' @param Label 标签名称
#' @param css_class  css类名称
#'
#' @return 返回值
#' @export
#'
#' @examples input.button.download();
input.button.download <- function(Id='downloadButton1',
                                  label='下载文件',
                                  css_class='downloadButton') {
  res <- new('input.button.download');
  res2 <- initialize(res,Id=Id,
                         label=label,
                         css_class=css_class)

}
