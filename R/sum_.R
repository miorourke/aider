#' Sum of vector elements excluding NA values
#'
#' Tweak to base R sum function. Calculates sum of vector excluding NAs
#'
#' @param x An R object. Numeric/logical vector and date/date-time/time interval objects
#'
#' @export
#' @examples
#' sum_(c(9, 12, 376, 483, NA))


sum_ <- function(x){
  sum(x,
       na.rm = TRUE)
}
