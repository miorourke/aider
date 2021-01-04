#' Output data
#'
#' Writes data frame to csv without row names, character or factor columns are not surrounded by quotes, and NAs displayed as enpty strings
#'
#'
#' @param x data frame
#' @param file filepath
#'
#' @export
#' @examples
#' \dontrun{
#' write_table(iris, "my_directory/my_file.csv")}


write_table <- function(x, file){

  utils::write.table(x,
              file = file,
              sep = ",",
              quote = FALSE,
              row.names = FALSE,
              na = "")

}

