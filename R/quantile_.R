#' Sample quantities excluding NA values
#'
#' Tweak to base R quantile function. Calculates the sample quantile corresponding to the given probabilities with NAs removed
#'
#' @param x numeric vector whose sample quantiles are wanted
#' @param probs Numeric vector of probabilities with values in between 0 and 1. Defaults to quartiles
#'
#' @export
#' @examples
#' quantile_(c(9, 12, 376, 483, NA), probs = seq(0, 1, 0.25))
#'
quantile_ <- function(x, probs){
  stats::quantile(x,
      probs = seq(0, 1, 0.25),
      na.rm = TRUE)
}
