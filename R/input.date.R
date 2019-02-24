#' 定义input.date类,可以实例化
#'
#' @slot value Date. 默认值
#'
#' @return 返回值
#' @include superDate.R
#' @export
#'
#' @examples input.date();
setClass("input.date", slots = c(value = "Date"),
         contains = 'superDate')

#' 定义input.date的同名入口函数
#'
#' @param Id  inputId
#' @param label 标签名称
#' @param value 默认当前日期
#' @param min 最小值
#' @param max  最大值
#' @param format 日期格式
#' @param startview  日历格式
#' @param weekstart 一周开始某哪一天
#' @param language 语言默认为中文
#' @param width  宽度
#' @param autoclose 自动关闭
#'
#' @return 返回值
#' @export
#'
#' @examples input.date();
input.date <- function(Id='dateInput1',
                       label='请选择一个日期:',
                       value=Sys.Date(),
                       min=as.Date('1984-01-01'),
                       max=as.Date('2100-12-31'),
                       format='yyyy-mm-dd',
                       startview='month',
                       weekstart=1L,
                       language='zh-CN',
                       width='100%',
                       autoclose=TRUE) {
res <- new('input.date');
res2 <- initialize(res,Id=Id,
                   label=label,
                   value=value,
                   min=min,
                   max=max,
                   format=format,
                   startview=startview,
                   weekstart=weekstart,
                   language=language,
                   width=width,
                   autoclose=autoclose)
return(res2);

}
