#' 定义相应的的处理
#'
#' @param input  input
#' @param output  output
#' @param session  session
#' @param imageFile  imageFileName
#'
#' @return return value of a list
#' @export
#'
#' @examples process.image();
process.image <- function(input,output,session,imageFile) {
  output$imageOutput1 <- renderImage({
    imageFile
  },deleteFile = FALSE)

}
