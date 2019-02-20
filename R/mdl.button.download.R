# 定义下载组件
#' 定义下载UI组件mdl.button.download
#'
#' @param id 命名空间id
#' @param label 下载按纽的名称
#'
#' @return 返回值
#' @include input.button.download.R
#' @export
#'
#' @examples mdl.button.download();
mdl.button.download <- function(id,label='下载文件') {
  ns <- NS(id)
  param.button.download <- input.button.download(Id =ns('downloadButton1'),
                                                 label = label,
                                                 css_class = 'input.button.download');
  tagList(drawElement(param.button.download));
}
