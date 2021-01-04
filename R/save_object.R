#' Save object in data directory
#'
#' Uses base R save() function to automatically save to data folder. Use make_data_dir() to configure
#'
#' @param x object to save
#' @param filename name for saved object. e.g. 'mydata.rda' or 'mydata.rds'
#' @param project_path file path of your R project. Defaults to automatically extract the information using the rstudioAPI
#' @param project_name name of the data directory. Defaults to use the same name as your R project. Will extract it from project_path if project is second sub-directory from system root. e.g. 'C:/git/my_project'
#' @param data_path_root file path of your data directory Defaults to '../../data'
#'
#' @export
#' @examples
#' \dontrun{
#' save_object(iris, "mydata.rda")
#' save_object(iris, "mydata.rda", data_path_root = '../../../data')}
save_object <- function(x, filename, project_path = dirname(rstudioapi::getActiveProject()), project_name = stringr::word(project_path, 3, sep = "/") , data_path_root = '../../data'){


  save_location <- paste0(data_path_root, "/", project_name, "/", filename)

  save(x, file = save_location)
}


