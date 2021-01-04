#' Maximum of vector elements excluding NA values
#'
#' Tweak to base R max function. Calculates maximum of vector excluding NAs
#'
#' @param x An R object. Numeric/logical vector and date/date-time/time interval objects
#'
#' @export
#' @examples
#' max_(c(9, 12, 376, 483, NA))
#'
max_ <- function(x){
  max(x,
       na.rm = TRUE)
}
