
#' 获取函数的参数列表
#'
#' @param func_names 函数名称,character向量,支持批量处理
#'
#' @return 返回一个数据框,提供FunctionName与FunctionArgList两个字段
#' @export
#'
#' @examples  getArgList(c('actionButton','actionLink'));
getArgList <- function(func_names) {
  #将正式向量进行向量化处理，支持批量
  formalArgs_v <- Vectorize(formalArgs);
  res1 <- formalArgs_v(func_names);
  FunctionName <- names(res1);
  FunctionArgList <- unlist(lapply(res1,function(x){
    paste(x,collapse = ',')
  }));
  res <- data.frame(FunctionName,FunctionArgList,stringsAsFactors = F,row.names = NULL);
  return(res);
}

