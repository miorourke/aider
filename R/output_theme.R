#' @title Change default ggplot2 theme
#' @description Creates default ggplot output to Data Science ggplot2 output theme

#' @param title_font_size Font size of plot title. Defaults to 14
#' @param axis_font_size Font size of axis labels. Defaults to 12
#' @return Object containing hexidecimal for each colour. Objects are called cax_grey, cox_dark_blue, cox_aqua, cox_teal, cix_sky_blue, cox_berry, cox_fire, cox_lime, cox_dark_grey

#' @export
#' @examples
#' output_theme()
#' output_theme(18, 14)
#'
#



output_theme <- function(title_font_size = 14, axis_font_size = 12){

col_grid <- grDevices::rgb(235, 235, 235, 100, 
                maxColorValue = 255)


output_theme <- ggplot2::theme_minimal()  +
  ggplot2::theme(text = ggplot2::element_text(family = "Arial"),
        axis.title.y = ggplot2::element_text(size = title_font_size),
        axis.text.y = ggplot2::element_text(size = axis_font_size),
        axis.text.x = ggplot2::element_text(size = axis_font_size),
        panel.grid.minor = ggplot2::element_blank(),
        panel.grid.major = ggplot2::element_line(colour = col_grid))

ggplot2::theme_set(output_theme)}