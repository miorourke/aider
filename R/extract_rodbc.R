#' Extract data from Database using RODBC
#'
#' Uses the RODBC package to extract data from a  database using an ODBC connector. Sets
#'
#' @param sql SQL query
#' @param odbc_connection name of your ODBC connection. Defaults to the authors ODBC connector
#'
#' @export
#' @examples
#' \dontrun{sql_query <- "SELECT * FROM database.table"
#' extract_rodbc(sql_query)}
#'
#'
#'

extract_rodbc <- function(sql, odbc_connection = "databricks_connection"){

  #ODBC connector
  connector <- RODBC::odbcConnect(odbc_connection)

  data_extract <- RODBC::sqlQuery(connector,
                                  sql,
                                  stringsAsFactors = FALSE)

  return(data_extract)

}


