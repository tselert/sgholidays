#' Create or test for dates of public holidays 
#'
#' Create or test for dates of public holidays, with option for off-in-lieu.  
#' @param date A date vector to be tested. 
#' @param oil Logical. Default `TRUE` will include off-in-lieu.  
#' @return A logical vector indicating public holiday or off-in-lieu. 
#' @examples
#' library(dplyr)
#' library(lubridate)
#' data.frame(cal = seq.Date(ymd(20130101), ymd(20130401), 1) ) %>% 
#' mutate(is_ph = is.ph(cal, TRUE))
#' @export

is.ph <- Vectorize(
  function(date, oil = T) {
    if(oil) {date %in% sgph$date
    } else {date %in% sgph$date[!grepl("OIL$", sgph$holiday.name)]}
    }
  )
