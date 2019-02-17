# 定义input.file类,可以进行实例化----
#' 定义input.file类,可以进行实例化
#'
#' @slot multiple logical. 是否可以多选
#' @slot accept character.  可以接受的文件类型
#' @slot buttonLabel character. 默认的按纽标签文字
#' @slot placeholder character. 占位符
#'
#' @return 返回值
#' @include shinyInputElement.R
#' @export
#'
#' @examples input.file();
setClass("input.file", slots = c(multiple = "logical",
                                 accept='character',
                                 buttonLabel='character',
                                 placeholder='character'),
         contains = 'shinyInputElement'
              )

# 定义input.file的同步入口函数----
#' 定义input.file的同步入口函数
#'
#' @param Id 内码
#' @param label 标签名称
#' @param width  宽度
#' @param multiple 是否可以多选
#' @param accept  文件类型
#' @param buttonLabel  默认按纽名称
#' @param placeholder 默认提供选项
#'
#' @return 返回值
#' @export
#'
#' @examples input.file();
input.file <- function(Id='FileInput1',
                       label='上传文件1',
                       width='auto',
                       multiple=FALSE,
                       accept='',
                       buttonLabel='请选择文件...',
                       placeholder="没有选任何文件") {
  res <- new('input.file');
  res2 <- initialize(res,Id=Id,
                         label=label,
                         width=width,
                         multiple=multiple,
                         accept=accept,
                         buttonLabel=buttonLabel,
                         placeholder=placeholder)

}
