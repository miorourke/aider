#' The Interquartile Range excluding NA values
#'
#' Tweak to base R IQR function. Calculates the interquartile range of vector with NAs removed
#'
#' @param x numeric vector whose sample quantiles are wanted
#'
#'
#' @export
#' @examples
#' iqr_(c(9, 12, 376, 483, NA))


iqr_ <- function(x){
  stats::IQR(x,
      na.rm = TRUE)
}
