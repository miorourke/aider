#' Create data directory for project
#'
#'
#' Creates a directory with the same name as your R project. Defaults to write at '../../data'
#'
#'
#' @param project_path file path of your R project. Defaults to automatically extract the information using the rstudioAPI
#' @param project_name name of the data directory. Defaults to use the same name as your R project. Will extract it from project_path if project is second sub-directory from system root. e.g. 'C:/git/my_project'
#' @param data_path_root file path of your data directory Defaults to '../../data'
#' @export
#' @examples
#' 
#' \dontrun{
#' make_data_dir()
#' make_data_dir(project_name = "my_project", data_path_root = "../../../data")}
#'
#'
#'

make_data_dir <- function(project_path = dirname(rstudioapi::getActiveProject()), project_name = stringr::word(project_path, 3, sep = "/") , data_path_root = '../../data'){


  #Create project directory
  dir.create(file.path(
    paste0(data_path_root, "/", project_name)), showWarnings = TRUE)

  print(paste0("Directory file path:", " ", data_path_root, "/", project_name))
}



