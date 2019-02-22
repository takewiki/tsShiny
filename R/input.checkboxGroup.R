#' 定义input.checkboxGroup基类
#'
#' @return 返回值
#' @export
#' @include superMultiOption.R
#'
#' @examples input.checkboxGroup();
setClass("input.checkboxGroup", contains = 'superMultiOption')


#' 定义input.checkboxGroup同名的入口函数
#'
#' @param Id  input内码
#' @param label  标签
#' @param choiceNames  选项名称
#' @param choiceValues 选择值
#' @param selected   默认初始化选项
#' @param inline   是否横向展示
#' @param width   宽度
#'
#' @return 返回值
#' @export
#'
#' @examples input.checkboxGroup();
input.checkboxGroup <- function(Id='checkboxGroupInput1',
                                label='请选择:',
                                choiceNames=list(icon("calendar"), icon("bed"),
                                                 icon("cog"), icon("bug")),
                                choiceValues=list("calendar", "bed", "cog", "bug"),
                                selected='bug',
                                inline=FALSE,
                                width='100%') {
  res <- new('input.checkboxGroup');
  res2 <- initialize(res,Id=Id,
                         label=label,
                         choiceNames=choiceNames,
                         choiceValues=choiceValues,
                         selected=selected,
                         inline=inline,
                         width=width  )
  return(res2);
}
