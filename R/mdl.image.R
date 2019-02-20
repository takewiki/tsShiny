#' mdl.image module function
#'
#' @param id  namespace id
#'
#' @return return value
#' @export
#'
#' @examples mdl.image();
mdl.image <- function(id) {
  ns <- NS(id)
  param.output.image<- output.image(Id =ns('imageOutput1'));
  tagList(drawElement(param.output.image));

}
