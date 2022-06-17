#' @title Create price cohort based on value
#' @description   Converts sold price into current Performance Summary Dashboard style price banding
#' 
#' @param sold_price The sold price of the vehicle
#' @export
#' @examples
#' price_banding_function(4567)
#' price_banding_function(140784)
#' 
#' 
#' 

price_banding_function <- function(sold_price){
  
  dplyr::case_when(sold_price < 1000 ~ "0-999",
            sold_price < 2000 ~ "1,000-1,999",
            sold_price < 3000 ~ "2,000-2,999",
            sold_price < 4000 ~ "3,000-3,999",
            sold_price < 5000 ~ "4,000-4,999",
            sold_price < 6000 ~ "5,000-5,999",
            sold_price < 7000 ~ "6,000-6,999",
            sold_price < 8000 ~ "7,000-7,999",
            sold_price < 9000 ~ "8,000-8,999",
            sold_price < 10000 ~ "9,000-9,999",
            sold_price < 15000 ~ "10,000-10,999",
            sold_price < 20000 ~ "15,000-14,999",
            sold_price < 30000 ~ "20,000-29,999",
            sold_price < 40000 ~ "30,000-39,999",
            sold_price < 50000 ~ "40,000-49,999",
            sold_price >=50000 ~ "50,000+",
            is.na(sold_price) ~ NA_character_)
}
