#' @title Change variable names to presentation standard
#' @description Change string casing to proper and replace underscrores with spaces

#' @param data Data frame you want to change the titles


#' @export
#' @examples
#' \dontrun{
#' presentation_titles(my_data)
#' my_data %>% presentation_titles()}
#'
#

presentation_titles <- function(data){
  
  output <- data
  
  names(output) <-gsub("\\_"," ",names(output))
  
  colnames(output) <- stringr::str_to_title(names(output))
  
  return(output)
  
}