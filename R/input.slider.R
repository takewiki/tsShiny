#' 定义input.slider的基类,可实例化
#'
#' @slot round integer. 负二表示2位小数，正一表达十，与EXCEL正好相反的表达
#'
#' @return 返回值
#' @export
#' @include superNumeric.R
#'
#' @examples input.slider();
setClass("input.slider", slots = c(round = "integer"),
         contains = 'superNumeric')

# 定义input.slider同名的入口函数----

#' 定义input.slider同名的入口函数
#'
#' @param Id  input内码
#' @param label 标签名称
#' @param min  最小值下限
#' @param max   最大值上限
#' @param value   默认值
#' @param round  四舍五入
#'
#' @return 返回值
#' @export
#'
#' @examples input.slider();
input.slider <- function(Id='sliderInput1',
                         label='请滚动执行数据:',
                         min=0,
                         max=100,
                         value=60,
                         step=1,
                         round=0L,
                         width='100%'
                         ) {
  res <- new('input.slider');
  res2 <- initialize(res,
                     Id=Id,
                     label=label,
                     min=min,
                     max=max,
                     value=value,
                     step=step,
                     round=round,
                     width=width);
  return(res2);

}
