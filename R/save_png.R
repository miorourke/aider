#' @title Export visualisation as PNG
#' @description Wrapper around ggsave function. Run this function directly after you've created your visualisation
#' @param path File path and filename for visualisation WITHOUT the file extension
#'
#' @return A PNG file with dpi = 300 and height = 8in and width = 13in

#' @export
#' @examples
#' \dontrun{
#' save_png('output/myplot')
#' }
#'
#

save_png <- function(path){
  ggplot2::ggsave(filename = paste0(path, '.png'), width = 13, height = 8)
}
