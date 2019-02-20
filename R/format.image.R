
#' Title image formmater
#'
#' @param fileName  filename
#' @param height height
#' @param width width
#' @param alt alter text
#'
#' @return return_value
#' @export
#'
#' @examples format.image();
format_image <- function(fileName='demo.jpg',
                     height='400px',
                     width='400px',
                     alt='image file holderplace'){
  res <-list(src=fileName,
       height=height,
       width=width,
       alt=alt)
  return(res)
}
