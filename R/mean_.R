#' Mean of vector elements excluding NA values
#'
#'
#' Tweak to base R mean function. Calculates mean of vector excluding NAs
#'
#'
#' @param x An R object. Numeric/logical vector and date/date-time/time interval objects
#'
#' @export
#' @examples
#' mean_(c(9, 12, 376, 483, NA))
#'
mean_ <- function(x){
  mean(x,
       na.rm = TRUE)
  }
