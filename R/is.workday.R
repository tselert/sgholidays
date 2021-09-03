#' Test for working days
#'
#' Test for dates of working days, with options to define weekends and 
#' whether to exclude public holiday off-in-lieu.  
#' 
#' @param date A date vector to be tested. 
#' @param oil Logical. Default `TRUE` will account for public holiday off-in-lieu. 
#' @param weekend Vector of days to define weekend. Default include Sat and Sun. 
#' @return A logical vector indicating working day or not. 
#' @importFrom lubridate wday
#' @examples
#' library(dplyr)
#' library(lubridate)
#' library(sgholidays)
#' data.frame(cal = seq.Date(ymd(20130101), ymd(20130401), 1) ) %>%
#'   dplyr::mutate(day = lubridate::wday(cal, TRUE)) %>% 
#'   mutate(is_ph = is.ph(cal, TRUE)) %>% 
#'   mutate(is_workday = is.workday(cal, TRUE))
#' @export

is.workday <- Vectorize(
  function(date, oil = T, weekend = c("Sat", "Sun")) {
    # Is it a weekend? 
    x <- lubridate::wday(date, label = TRUE) %in% weekend
    
    # Is it a PH? 
    y <- is.ph(date, oil = oil) 
    
    !TRUE %in% c(x,y)
  })

