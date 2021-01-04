#' Median of vector elements excluding NA values
#'
#'
#' Tweak to base R median function. Calculates median of vector excluding NAs
#'
#' @param x An R object. Numeric/logical vector and date/date-time/time interval objects
#'
#' @export
#' @examples
#' median_(c(9, 12, 376, 483, NA))
#'
median_ <- function(x){
  stats::median(x,
       na.rm = TRUE)
}
