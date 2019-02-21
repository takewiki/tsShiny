#' 定义input.numeric基类，可实例化
#'
#' @return 返回值
#' @export
#' @include superNumeric.R
#'
#' @examples input.numeric();
setClass("input.numeric", contains = 'superNumeric')

#' 定义input.numeric的同名函数
#'
#' @param Id 内码
#' @param label 名称
#' @param value 默认值
#' @param min 最小值
#' @param max 最大值
#' @param step 步骤
#'
#' @return 返回值
#' @export
#'
#' @examples input.numeric();
input.numeric <- function(Id='numericInput1',
                          label='请输入数值:',
                          value=30,
                          min=5,
                          max=50,
                          step=1,
                          width='100%') {
  res <- new('input.numeric');
  res2 <- initialize(res,
                     Id=Id,
                     label=label,
                     value=value,
                     min=min,
                     max=max,
                     step=step,
                     width=width)
  return(res2);

}
