% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_object.R
\name{load_object}
\alias{load_object}
\title{Load object from data directory}
\usage{
load_object(
  filename,
  project_path = rstudioapi::getActiveProject(),
  project_name = NA_character_,
  data_path_root = "../../data"
)
}
\arguments{
\item{filename}{name for saved object. e.g. 'mydata.rda' or 'mydata.rds'}

\item{project_path}{file path of your R project. Defaults to automatically extract the information using the rstudioAPI}

\item{project_name}{name of the data directory. Defaults to use the same name as your R project. Will extract it from project_path if project is second sub-directory from system root. e.g. 'C:/git/my_project'}

\item{data_path_root}{file path of your data directory Defaults to '../../data'}
}
\description{
Uses base R load() function to automatically load from data folder. Use make_data_dir() to configure
}
\examples{
\dontrun{
load_object("mydata.rda")
load_object("mydata.rda", data_path_root = '../../../data')}
}
