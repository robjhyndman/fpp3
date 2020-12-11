#' US monthly employment data
#'
#' \code{us_employment} is a monthly `tsibble` containing US employment data from January 1939
#' to June 2019. Each `Series_ID` represents different sectors of the economy.
#'
#' @source
#' U.S. Bureau of Labor Statistics
#'
#' @name us_employment
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' us_employment
#'
NULL

#' Percentage changes in economic variables in the USA.
#'
#' \code{us_change} is a quarterly `tsibble` containing percentage changes in
#' quarterly personal consumption expenditure, personal disposable income,
#' production, savings and the unemployment rate for the US, 1970 to 2016.
#' Original $ values were in chained 2012 US dollars.
#'
#' @source Federal Reserve Bank of St Louis.
#'
#' @name us_change
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' us_change
#'
NULL

#' US finished motor gasoline product supplied.
#'
#' Weekly data beginning Week 6, 1991, ending Week 3, 2017. Units are
#' "million barrels per day".
#'
#' @name us_gasoline
#' @docType data
#' @format Time series object of class `tsibble`.
#' @source US Energy Information Administration.
#' @keywords datasets
#' @examples
#'
#' us_gasoline
#'
NULL


#' Air Transport Passengers Australia
#'
#' Total annual air passengers (in millions) including domestic and
#' international aircraft passengers of air carriers registered in Australia.
#' 1970-2016.
#'
#'
#' @name aus_airpassengers
#' @docType data
#' @format Annual time series of class `tsibble`.
#' @source World Bank.
#' @keywords datasets
#' @examples
#'
#' aus_airpassengers
#'
NULL


#' Rice production (Guinea)
#'
#' Total annual rice production (million metric tons) for Guinea. 1970-2011.
#'
#'
#' @name guinea_rice
#' @docType data
#' @format Annual time series of class `tsibble`.
#' @source World Bank.
#' @keywords datasets
#' @examples
#'
#' guinea_rice
#'
NULL

#' Boston marathon winning times since 1897
#'
#' Winning times for events at the Boston Marathon.
#' 1897-2019.
#'
#'
#' @name boston_marathon
#' @docType data
#' @format Annual time series of class `tsibble`.
#' @source Boston Athletic Association.
#' \url{https://www.baa.org/races/boston-marathon/results/champions}
#'
#' @keywords datasets
#' @examples
#'
#' boston_marathon
#'
NULL


#' Monthly Canadian gas production
#'
#' Monthly Canadian gas production, billions of cubic metres, January 1960 -
#' February 2005
#'
#'
#' @name canadian_gas
#' @docType data
#' @format Monthly time series of class `tsibble`.
#' @references \url{http://www.exponentialsmoothing.net}
#' @source Hyndman, R.J., Koehler, A.B., Ord, J.K., and Snyder, R.D., (2008)
#' \emph{Forecasting with exponential smoothing: the state space approach},
#' Springer.
#' @keywords datasets
#' @examples
#'
#' canadian_gas
#'
NULL


#' International Arrivals to Australia
#'
#' Quarterly international arrivals to Australia from Japan, New
#' Zealand, UK and the US.  1981Q1 - 2012Q3.
#'
#'
#' @name aus_arrivals
#' @docType data
#' @format Quarterly time series of class `tsibble`.
#' @source Tourism Research Australia.
#' @keywords datasets
#' @examples
#'
#' aus_arrivals
#'
NULL

#' Call volume for a large North American bank
#'
#' Five-minute call volume handled on weekdays between 7:00am and 9:05pm, beginning 3 March 2003 for 164 days.
#'
#' @name bank_calls
#' @docType data
#' @format Time series of class `tsibble` at 5 minute intervals.
#' @source Rob Hyndman
#' @keywords datasets
#' @examples
#'
#' bank_calls
#'
NULL

#' Price series for various commodities
#'
#' Annual prices for eggs, chicken, copper, nails, oil and wheat.
#' Eggs, chicken, nails, oil and copper in $US; wheat in British pounds. All prices adjusted for inflation.
#'
#' @source Makridakis, Wheelwright and Hyndman (1998) *Forecasting: methods and applications*, John Wiley & Sons: New York. Chapter 9.
#' @name prices
#' @docType data
#' @format Annual time series of class `tsibble`.
#' @keywords datasets
#' @examples
#'
#' prices %>% autoplot(wheat)
#'
NULL
