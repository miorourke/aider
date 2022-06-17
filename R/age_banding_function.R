#' @title Create age cohort based on age in months
#' 
#' @param age_months Age measured in months
#' @return Converts age into current Performance Summary Dashboard style age banding
#' @export
#' @examples
#' mileage_banding_function(4567)
#' mileage_banding_function(140784)
#' 
#' 
#' 

age_banding_function <- function(age_months){
  
  dplyr::case_when(age_months < 12 ~ "0-1 years",
            age_months < 24 ~ "1-2 years",
            age_months < 36 ~ "2-3 years",
            age_months < 48 ~ "3-4 years",
            age_months < 60 ~ "4-5 years",
            age_months < 72 ~ "5-6 years",
            age_months < 96 ~ "6-8 years",
            age_months < 120 ~ "8-10 years",
            age_months < 144 ~ "10-12 years",
            age_months >= 144 ~ "12 years +",
            is.na(age_months) ~ NA_character_)
}

#'
#