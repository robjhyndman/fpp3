#' US monthly employment data
#'
#' \code{us_employment} contains monthly US employment data from January 1939
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
#' \code{us_change} contains percentage changes in
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
#' Weekly data beginning Week 6, 1991, and ending Week 3, 2017.
#' Units are "million barrels per day".
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
#' Zealand, UK and the US. 1981Q1 - 2012Q3.
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
#' prices |> autoplot(wheat)
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
#' souvenirs |> autoplot(Sales)
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
#' insurance |>
#'   ggplot(aes(x=TVadverts, y=Quotes)) + geom_point()
#'
NULL

#' Australian accommodation data
#'
#' \code{aus_accommodation} contains quarterly data on Australian tourist accommodation
#' from short-term non-residential accommodation with 15 or more rooms, 1998 Q1 - 2016 Q2.
#' The data set also contains the Australian Consumer Price Index (CPI) for the same period.
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

#' Australian fertility rates
#'
#' \code{aus_fertility} contains annual data on one measured variable:
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
#' @source Australian Bureau of Statistics. \url{https://www.abs.gov.au/statistics/people/population/births-australia/2022}
#'
#' @name aus_fertility
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' aus_fertility
#'
NULL

#' Monthly offences in NSW
#'
#' \code{nsw_offences} contains monthly data with one measured variable:
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
#' @source NSW Bureau of Crime Statistics and Research.
#' \url{https://bocsar.nsw.gov.au/}
#'
#'
#' @name nsw_offences
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' nsw_offences
#'
NULL

#' Average daily total pedestrian count in Melbourne
#'
#' Daily average total pedestrian count (across different sensors) from 2019-01-01 to
#' 2024-05-29.
#'
#' @source Melbourne Open Data Portal. \url{https://data.melbourne.vic.gov.au}
#'
#'
#' @name melb_walkers
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' melb_walkers |> autoplot(Count)
#'
NULL

#' Monthly short term (<1 year) visitor arrivals to Australia
#'
#' \code{aus_inbound} contains monthly data with one measured variable:
#' \tabular{ll}{
#'     Count: \tab Number of individuals arriving in Australia \cr
#' }
#'
#' Each series is uniquely identified using two keys:
#' \tabular{ll}{
#'     County: \tab Country of stay/residence \cr
#'     Purpose: \tab Purpose of travel
#' }
#'
#'covering the period from Jan 2005--Feb 2020.
#'
#' @source Tourism Research Australia
#'
#'
#' @name aus_inbound
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' aus_inbound
#'
NULL

#' Monthly short term (<1 year) resident departures in Australia
#'
#' \code{aus_outbound} contains monthly data with one measured variable:
#' \tabular{ll}{
#'     Count: \tab Number of individuals departing Australia \cr
#' }
#'
#' Each series is uniquely identified using two keys:
#' \tabular{ll}{
#'     County: \tab Destination \cr
#'     Purpose: \tab Purpose of travel
#' }
#'
#'covering the period from Jan 2005--Jun 2017.
#'
#' @source Tourism Research Australia
#'
#'
#' @name aus_outbound
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#'
#' @examples
#' aus_outbound
#'
NULL

#' Australian mortality data
#'
#' Weekly death counts and mortality rates in Australia.
#'
#' \code{aus_mortality} contains weekly data with two measured variables:
#' \tabular{ll}{
#'  \code{Deaths}: \tab Death count\cr
#'     \code{Mortality}:  \tab Mortality rate
#' }
#' from 2015 week 01 to 2023 week 12 for five different age groups plus the
#' total, categorised by sex.
#'
#' Each series is uniquely identified using three keys:
#' \tabular{ll}{
#'     \code{Sex}:  \tab Sex of the individual: Male, Female, or Both\cr
#'     \code{Age}:  \tab Age group of the individual
#' }
#'
#' The mortality rate is defined as the number of deaths per thousand people in
#' Australia in each week.
#'
#' @source \url{https://mortality.org/Data/STMF} (Downloaded on 29 May 2024)
#'
#' @name aus_mortality
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' aus_mortality
#'
NULL

#' OTexts page views
#'
#' Daily page views on the OTexts website \url{https://OTexts.com/} as recorded by Google analytics.
#'
#' \code{otexts_views} contains daily data with two columns:
#' \tabular{ll}{
#'     \code{Date}:  \tab Date for which the page views are recorded\cr
#'     \code{Pageviews}:  \tab Page views on the OTexts website\cr
#' }
#'
#' @name otexts_views
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' otexts_views
#'
NULL

#' Australian births data
#'
#' Number of births in Australia.
#'
#' \code{aus_births} contains monthly data with one measured variable:
#' \tabular{ll}{
#'     \code{Births}:  \tab Number of births\cr
#' }
#' from January 1975 to December 2021 for the 6 states and 2 territories
#' of Australia, indexed by:
#' \tabular{ll}{
#'     \code{Month}:  \tab Year-month.\cr
#' }
#'#' Each series is uniquely identified using the key:
#' \tabular{ll}{
#'     \code{State}: The state or territory.\cr
#' }
#'
#' @source Australian Bureau of Statistics. \url{https://www.abs.gov.au/statistics/people/population/births-australia/2022}
#'
#' @name aus_births
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' aus_births
#'
NULL

#' Australian migration data
#'
#' Net Overseas Migration (NOM) to Australia.
#'
#' \code{aus_migration} contains quarterly data with one measured variable:
#' \tabular{ll}{
#'     \code{NOM}:  \tab The net gain or loss of population through immigration
#'     to Australia and emigration from Australia\cr
#' }
#' from 1981 Q2 to 2023 Q3 for the 6 states and 2 territories of Australia, indexed by:
#' \tabular{ll}{
#'     \code{Quarter}:  \tab Year-quarter.\cr
#' }
#'
#' NOM is based on an international traveller's duration of stay being in or out
#' of Australia for 12 months or more, over a 16 month period.
#'
#' Each series is uniquely identified using the key:
#' \tabular{ll}{
#'     \code{State}: The state or territory.\cr
#' }
#'
#' @source Australian Bureau of Statistics. \url{https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/dec-2023}. Cat No. 310102.
#'
#' @name aus_migration
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' aus_migration
#'
NULL

#' Australian cigarette and tobacco expenditure
#'
#' The total household expenditure for cigarette and tobacco consumption (CTC)
#' in Australia.
#'
#' \code{aus_tobacco} contains quarterly data with one measured variable:
#' \tabular{ll}{
#'     \code{Expenditure}:  \tab The total expenditure\cr
#' }
#' from 1985 Q3 to 2023 Q4 for the 6 states and 2 territories of Australia,
#' indexed by:
#' \tabular{ll}{
#'     \code{Quarter}:  \tab Year-quarter.\cr
#' }
#'
#' The prices are represented as a chain volume measure (a representation of constant prices) in billions of dollars.
#'
#' Each series is uniquely identified using the key:
#' \tabular{ll}{
#'     \code{State}: The state or territory.\cr
#' }
#'
#' @source Australian Bureau of Statistics. \url{https://www.abs.gov.au/statistics/economy/national-accounts/australian-national-accounts-national-income-expenditure-and-product/mar-2024}
#'
#' @name aus_tobacco
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' aus_tobacco |> autoplot(Expenditure) + scale_y_log10()
#'
NULL

#' New York childcare data
#'
#' The number of employees (in thousands) in child day care services in
#' New York City over the period the period from January 1990 to April 2024.
#'
#' \code{ny_childcare} contains monthly data with two columns:
#' \tabular{ll}{
#'     \code{Month}:  \tab Year-month\cr
#'     \code{Count}:  \tab Number of employees.\cr
#' }
#'
#' @source U.S. Bureau of Labor Statistics and Federal Reserve Bank of St. Louis,
#' All Employees: Education and Health Services: Child Care Services in New York City, NY
#' retrieved from FRED, Federal Reserve Bank of St. Louis;
#' \url{https://fred.stlouisfed.org/series/SMU36935616562440001}, 30 May 2024.
#' @name ny_childcare
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' ny_childcare
#'
NULL

#' Australian vehicle sales
#'
#' The number of new motor vehicles sold in Australia.
#'
#' \code{aus_vehicle_sales} contains monthly data with one measured variable:
#' \tabular{ll}{
#'     \code{Count}:  \tab The number of vehicles sold\cr
#' }
#' from January 1994 to December 2017 in Australia,
#' indexed by:
#' \tabular{ll}{
#'     \code{Month}:  \tab Year-month.\cr
#' }
#'
#' Each series is uniquely identified using the key:
#' \tabular{ll}{
#'     \code{Type}: The type of the vehicle sold (Passenger, SUV, Other).\cr
#' }
#'
#' @source Australian Bureau of Statistics. \url{https://www.abs.gov.au/statistics/industry/tourism-and-transport/sales-new-motor-vehicles/dec-2017}. Cat No. 931401.
#'
#' @name aus_vehicle_sales
#' @docType data
#' @format Time series of class `tsibble`
#' @keywords datasets
#' @examples
#'
#' aus_vehicle_sales
#'
NULL
