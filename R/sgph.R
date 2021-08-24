#' Data of Public Holidays in Singapore 
#'
#' This dataset contains all the dates of gazetted public holidays (PH) in Singapore since 2008. 
#'
#' In Aug 1968, Singapore scrapped a few holidays to improve productivity. #'  
#' Today, Singaporeans enjoy 11 gazetted public holidays:  
#'  1. New Year Day (1d)
#'  2. Chinese New Year (2d) 
#'  3. Good Friday (1d) 
#'  4. Labour Day (1d) 
#'  5. Hari Raya Puasa (1d) 
#'  6. Vesak Day (1d) 
#'  7. National Day (1d)
#'  8. Hari Raya Haji (1d) 
#'  9. Deepavali (1d) 
#' 10. Christmas (1d)
#' 
#' In addition, Polling Day is also a public holiday for Presidential Election and General Elections 
#' 
#' Note on Off-in-lieu (oil):
#' This dataset does not contain the oil dates. Function is in development. 
#' If actual PH falls on a Sunday, the following working day will be the 'oil' by default. 
#' If actual PH falls on a Saturday, the worker may be granted an 'oil' on date agreed with his/her employer or be 
#' compensated monetarily. Hence, this function does not consider oil for PH on Saturdays. 
#' 
#' References: 
#' https://www.mom.gov.sg/employment-practices/public-holidays-entitlement-and-pay
#' https://sso.agc.gov.sg/Act/HA1998#Sc-
#' 
#'
#' @format A data.table with 2 variables:
#' \describe{
#'   \item{PublicHolidayName}{chr Name of public holiday}
#'   \item{Date}{Date Date of gazetted public holiday}
#' }
#' @source \url{https://www.mom.gov.sg/employment-practices/public-holidays, https://www.mom.gov.sg/newsroom/press-releases/2007/singapore-public-holidays-for-the-year-2008}
"sgph"