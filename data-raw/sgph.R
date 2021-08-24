## code to prepare `DATASET` dataset goes here

library(data.table) 
library(lubridate)
library(stringr)

sgph <- fread("./data-raw/Singapore PH.csv") 

sgph[, `:=`(PublicHolidayName = str_trim(PublicHolidayName), 
            Date = dmy(Date))]

usethis::use_data(sgph, overwrite = TRUE)

