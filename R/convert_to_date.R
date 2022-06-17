#' @title Convert string into date
#'
#' @param date Date object. Must be in YYYY-mm-dd format
#'
#' @return A date object in ISO 8601 international standard

#' @export
#' @examples
#' convert_to_date("2022-06-17")
#'
#

convert_to_date <- function(date){
  as.Date(as.character(date), format = '%Y-%m-%d')
  
}