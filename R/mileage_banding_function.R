#' @title Create mileage cohort based on age in months
#' @details Converts mileage into current Performance Summary Dashboard style mileage banding

#' @param mileage The mileage of the vehicle
#' @export
#' @examples
#' mileage_banding_function(4567)
#' mileage_banding_function(140784)
#' 
#' 
#' 

mileage_banding_function <- function(mileage){
  
  dplyr::case_when(mileage < 10000 ~ "0-9,999",
            mileage < 20000 ~ "10,000-19,999",
            mileage < 30000 ~ "20,000-29,999",
            mileage < 40000 ~ "30,000-39,999",
            mileage < 50000 ~ "40,000-49,999",
            mileage < 60000 ~ "50,000-59,999",
            mileage < 70000 ~ "60,000-69,999",
            mileage < 80000 ~ "70,000-79,999",
            mileage < 90000 ~ "80,000-89,999",
            mileage < 100000 ~ "90,000-99,999",
            mileage < 110000 ~ "100,000-109,999",
            mileage < 120000 ~ "110,000-119,999",
            mileage < 130000 ~ "120,000-129,999",
            mileage < 140000 ~ "130,000-139,999",
            mileage < 150000 ~ "140,000-149,999",
            mileage >= 150000 ~ "150,000+",
            is.na(mileage) ~ NA_character_)
}
