## code to prepare `DATASET` dataset goes here

library(data.table) 
library(lubridate)
library(stringr)

sgph <- fread("./data-raw/Singapore PH.csv") 

sgph[, `:=`(holiday.name = str_trim(holiday.name), 
            date = dmy(date))]

usethis::use_data(sgph, overwrite = TRUE)


