#' 定义input.text类,可实例化
#'
#' @return 返回值
#' @include superText.R
#' @export
#'
#' @examples input.text();
setClass("input.text", contains = 'superText')

#' 定义文本或密码输入框的实例化类
#'
#' @param Id 内码
#' @param label 标签名称
#' @param value  默认值
#' @param width  宽度
#' @param placeholder  点位符
#' @param isPassword  是否为密码,默认为否
#'
#' @return 返回值
#' @export
#'
#' @examples input.text();
input.text <- function(Id='textInput1',
                       label='请输入文本',
                       value='',
                       width='100%',
                       placeholder='',
                       isPassword=FALSE) {
res <- new('input.text');
res2 <- initialize(res,Id=Id,
                       label=label,
                       value=value,
                       width=width,
                       placeholder=placeholder,
                       isPassword=isPassword)
return(res2)

}
