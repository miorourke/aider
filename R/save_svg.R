#' @title Export visualisation as SVG
#' @description Wrapper around ggsave function. Run this function directly after you've created your visualisation
#' @param path File path and filename for visualisation WITHOUT the file extension
#'
#' @return A SVG file with dpi = 300 and height = 8in and width = 13in

#' @export
#' @examples
#' \dontrun{
#' save_svg('output/myplot')
#' }
#'
#

save_svg <- function(path){
  ggplot2::ggsave(filename = paste0(path, '.svg'), width = 13, height = 8)
}
