#' Load object from data directory
#'
#' Uses base R load() function to automatically load from data folder. Use make_data_dir() to configure
#'
#' @param filename name for saved object. e.g. 'mydata.rda' or 'mydata.rds'
#' @param project_path file path of your R project. Defaults to automatically extract the information using the rstudioAPI
#' @param project_name name of the data directory. Defaults to use the same name as your R project. Will extract it from project_path if project is second sub-directory from system root. e.g. 'C:/git/my_project'
#' @param data_path_root file path of your data directory Defaults to '../../data'
#'
#' @export
#' @examples
#' \dontrun{
#' load_object("mydata.rda")
#' load_object("mydata.rda", data_path_root = '../../../data')}
load_object <- function(filename, project_path = rstudioapi::getActiveProject(), project_name = NA_character_, data_path_root = '../../data'){
  
  project_name <- if (is.na(project_name)) {
    stringr::word(project_path, 3, sep = "/")
  } else {
    project_name
  }
  
  file_location <- paste0(data_path_root, "/", project_name, "/", filename)
  
  load(file_location)
}


