#' Count number of NA values within a data frame
#'
#' Counts the number of NAs within a data frame or array
#'
#' @param x data frame or array of interest
#'
#' @export
#' @examples
#' \dontrun{na_count(iris)}
#'
#'
na_count <- function(x) sapply(x, function(y) sum(is.na(y)))
