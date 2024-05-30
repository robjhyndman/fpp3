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

#' Call volume for a large North American commercial bank
#'
#' Five-minute call volume handled on weekdays between 7:00am and 9:05pm, beginning 3 March and 24 October 2003 (164 days).
#'
#' @name bank_calls
#' @docType data
#' @format Time series of class `tsibble` at 5 minute intervals.
#' @source Jonathan Weinberg
#' @references Weinberg, Brown & Stroud (2007) "Bayesian forecasting of an inhomogeneous Poisson process with applications to call center data" \emph{Journal of the American Statistical Associiation}, 102:480, 1185-1198.
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

#' Sales for a souvenir shop
#'
#' Monthly sales for a souvenir shop on the wharf at a beach resort town in Queensland, Australia.
#'
#' @source Makridakis, Wheelwright and Hyndman (1998) *Forecasting: methods and applications*, John Wiley & Sons: New York. Exercise 5.8.
#' @name souvenirs
#' @docType data
#' @format Monthly time series of class `tsibble`.
#' @keywords datasets
#' @examples
#'
#' souvenirs %>% autoplot(Sales)
#'
NULL


#' Insurance quotations and advertising expenditure
#'
#' Monthly quotations and monthly television advertising expenditure for a US insurance company.
#' January 2002 to April 2005
#'
#' @source Kindly provided by Dave Reilly, Automatic Forecasting Systems.
#' @name insurance
#' @docType data
#' @format Monthly time series of class `tsibble`.
#' @keywords datasets
#' @examples
#'
#' insurance %>%
#'   ggplot(aes(x=TVadverts, y=Quotes)) + geom_point()
#'
NULL

#' Australian accommodation data
#'
#' \code{aus_accommodation} is a quarterly `tsibble` containing data on Australian tourist accommodation
#' from short-term non-residential accommodation with 15 or more rooms, 1998 Q1 - 2016 Q2. The data set
#' also contains the Australian Consumer Price Index (CPI) for the same period.
#' Takings are in millions of Australian dollars,
#' Occupancy is a percentage of rooms occupied,
#' CPI is an index with value 100 in 2012 Q1.
#'
#' @source
#' Australian Bureau of Statistics, Cat No 8635.0, Table 10, and Cat No 6401.0, Table 1.
#'
#' @name aus_accommodation
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' aus_accommodation
#'
NULL

#' Australian women fertility rate
#'
#' \code{aus_fertility} is a yearly `tsibble` with one value:
#' \tabular{ll}{
#'     Rate: \tab Fertility rate (per thousand women)\cr
#' }
#'
#' Each series is uniquely identified using two keys:
#' \tabular{ll}{
#'     Region: \tab Australia, states and territories\cr
#'     Age: \tab Age of the woman\cr
#' }
#' based on calendar year of registration data. It covers the period from 1975--2022.
#'
#' @source Australian Bureau of Statistics
#'
#'
#' @name aus_fertility
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' library(tsibble)
#' aus_fertility
#'
NULL

#' Monthly offences in NSW
#'
#' \code{offences} is a monthly `tsibble` with one value:
#' \tabular{ll}{
#'     Count: \tab Number of offences reported \cr
#' }
#'
#' Each series is uniquely identified using one key:
#' \tabular{ll}{
#'     Type: \tab Offence type \cr
#' }
#'
#'covering the period from Apr 1995--Dec 2023.
#'
#' @source NSW Bureau of Crime Statistics and Research
#'
#'
#' @name offences
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' library(tsibble)
#' offences
#'
NULL

#' Average daily total pedestrian count in Melbourne
#'
#' Daily average (across different sensors) total pedestrian count in thousands from 2019-01-01 to
#' 2024-05-29.
#'
#' @source Melbourne Open Data Portal
#'
#'
#' @name daily_walkers
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' library(tsibble)
#' daily_walkers
#'
NULL
