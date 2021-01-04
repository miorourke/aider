#' Minimum of vector elements excluding NA values
#'
#' Tweak to base R min function. Calculates minimum of vector excluding NAs
#' @param x An R object. Numeric/logical vector and date/date-time/time interval objects
#'
#' @export
#' @examples
#' min_(c(9, 12, 376, 483, NA))

min_ <- function(x){
  min(x,
       na.rm = TRUE)
}
