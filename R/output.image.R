#' 定义output.image类,可以实例化
#'
#' @return 返回值
#' @include superImagePlot.R
#' @export
#'
#' @examples output.image();
setClass("output.image", contains = 'superImagePlot')

#' 定义output.image实例化入口函数
#'
#' @param Id  outputId内码
#' @param width  宽度
#' @param height 高度
#' @param click  单击
#' @param dblclick  双击
#' @param hover   悬停
#' @param hoverDelay      延时悬停
#' @param hoverDelayType   延时悬停类型
#' @param brush            刷子
#' @param clickId        单击内码
#' @param hoverId        悬停内码
#' @param inline         是否一行
#'
#' @return 返回值
#' @export
#'
#' @examples output.image();
output.image <- function(Id='imageOutput1',
                         width='100%',
                         height='400px',
                         click='',
                         dblclick='',
                         hover='',
                         hoverDelay='',
                         hoverDelayType='',
                         brush='',
                         clickId='',
                         hoverId='',
                         inline=FALSE) {
  res <- new('output.image');
  res2 <- initialize(res,Id=Id,
                         width=width,
                         height=height,
                         click=click,
                         dblclick=dblclick,
                         hover=hover,
                         hoverDelay=hoverDelay,
                         hoverDelayType=hoverDelayType,
                         brush=brush,
                         clickId=clickId,
                         hoverId=hoverId,
                         inline=inline);
  return(res2);

}
