#' 定义input.dataRange类，可以实例化
#'
#' @slot start Date.开始日期
#' @slot separator  分隔符
#' @slot end Date.结束日期
#'
#' @return 返回值
#' @include superDate.R
#' @export
#'
#' @examples input.dateRange()
setClass("input.dateRange", slots = c(start = "Date",
                                      end='Date',
                                      separator='character'),
         contains = 'superDate')

#' 定义input.dateRange同名实例化入口函数
#'
#' @param Id inputId
#' @param label  标签名称
#' @param start  开始日期默认当天
#' @param end  结束日期默认2周后
#' @param min  最小日期
#' @param max  最大日期
#' @param format  日期格式
#' @param startview   月历格式
#' @param weekstart  一周开始于
#' @param language  语言
#' @param separator  分隔符号
#' @param width 宽度
#' @param autoclose  自动关闭
#'
#' @return 返回值
#' @include superDate.R
#' @export
#'
#' @examples input.dateRange();
input.dateRange <- function(Id='dateRangeInput1',
                            label='请选择日期范围:',
                            start=Sys.Date(),
                            end=Sys.Date()+14,
                            min=as.Date('1984-01-01'),
                            max=as.Date('2100-12-31'),
                            format='yyyy-mm-dd',
                            startview='month',
                            weekstart=1L,
                            language='zh-CN',
                            separator='到',
                            width='100%',
                            autoclose=TRUE) {
  res <- new('input.dateRange');
  res2 <- initialize(res,Id=Id,
                         label=label,
                         start=start,
                         end=end,
                         min=min,
                         max=max,
                         format=format,
                         startview=startview,
                         weekstart=weekstart,
                         language=language,
                         separator=separator,
                         width=width,
                         autoclose=autoclose)
  return(res2)

}
