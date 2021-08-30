## code to prepare `DATASET` dataset goes here

library(data.table) 
library(lubridate)
library(stringr)

sgph <- fread("./data-raw/Singapore PH.csv") 

# clean up unintended whitespace and date format from source 
sgph[, `:=`(holiday.name = str_trim(holiday.name), 
            date = dmy(date))]

# assign day of week
sgph[, `:=`(wkday = lubridate::wday(date, label = T))]

# pick up oil on mondays
oil <- sgph[wkday == "Sun"
            ][, `:=`(holiday.name = paste(holiday.name, "OIL"), 
                     date = date + lubridate::days(1))]

# append to list of actual PH and order by date  
sgph <- rbind(sgph, oil) 
setorder(sgph, date)

# for OIL that clashes with another PH, roll the date to the next day
# assign day of week again 
sgph[duplicated(date) & grepl("OIL$", holiday.name), 
     date := date + lubridate::days(1)]

sgph[, wkday := lubridate::wday(date, label = T)]
View(sgph)


# DONE!
usethis::use_data(sgph, overwrite = TRUE)


