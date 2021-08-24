#' Data of Public Holidays in Singapore 
#'
#' This dataset contains all the dates of gazetted public holidays (PH) in Singapore since 2008. 
#' It will be updated annually as per the official website of the Ministry of Manpower Singapore.  
#' 
#' Since Aug 1968, Singaporeans enjoy 11 gazetted public holidays:  
#'  1. New Year Day (1d)  
#'  2. Chinese New Year (2d)   
#'  3. Good Friday (1d) 
#'  4. Labour Day (1d) 
#'  5. Hari Raya Puasa (1d) 
#'  6. Vesak Day (1d) 
#'  7. National Day (1d)
#'  8. Hari Raya Haji (1d) 
#'  9. Deepavali (1d) 
#' 10. Christmas Day (1d)
#' 
#' In addition, Polling Day is also a public holiday for Presidential Election and 
#' General Elections (not including by-elections)
#' 
#' SG50 Public Holiday was declared a special holiday on 7 August 2015 to mark the nation's 
#' 50th anniversary of independence. 
#' 
#' Fun fact: Singapore scrapped a few holidays in August 1968 to improve productivity.  
#' 
#' 
#' Note on Off-in-lieu (OIL):
#' This dataset does not contain dates of OIL. Function is in development.  
#' 
#' If the gazetted PH falls on a Sunday, the following working day will be the 'OIL' by default.  
#' 
#' If the gazetted PH falls on a worker's rest day (especially Saturday), he may be granted an 'OIL' on a date agreed with his/her employer or be 
#' compensated monetarily. 
#'  
#' 
#'
#' @format A data.table with 2 variables:
#' \describe{
#'   \item{holiday.name}{chr Name of public holiday}
#'   \item{date}{Date Date of gazetted public holiday}
#' }
#' 
#' @source 
#' \url{https://www.mom.gov.sg/employment-practices/public-holidays}
#' 
#' \url{https://www.mom.gov.sg/newsroom/press-releases/2007/singapore-public-holidays-for-the-year-2008} 
#' 
#' @references 
#' \url{https://sso.agc.gov.sg/Act/HA1998#Sc-}
#' 
#' \url{https://www.mom.gov.sg/employment-practices/public-holidays-entitlement-and-pay}
#' 
"sgph"