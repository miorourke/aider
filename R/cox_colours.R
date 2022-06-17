#' @title Loads Hexidecimal codes for Cox Automotive colour palette 
#' @description Creates an object containing the hexidecimal code for the following colours: Grey, dark blue, aqua, teal, sky blue, berry, fire, lime, dark grey

#'
#' @return Object containing hexidecimal for each colour. Objects are called cax_grey, cox_dark_blue, cox_aqua, cox_teal, cix_sky_blue, cox_berry, cox_fire, cox_lime, cox_dark_grey

#' @export
#' @examples
#' cox_colours()
#'
#

cox_colours <- function(){
  cox_grey <<- "#808285"
  cox_dark_blue <<- "#003661"
  cox_aqua <<- "#00b1c2"
  cox_teal <<- "#007984"
  cox_sky_blue <<- "#0585C8"
  cox_berry <<- "#ac2950"
  cox_fire <<- "#f26524"
  cox_lime <<- "#bfd730"
  cox_dark_grey <<- "#808285"
  
}