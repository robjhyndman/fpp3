library(tidyverse)
library(readxl)
library(tsibble)

# US change data
# Downloaded from https://research.stlouisfed.org/pdl/1216/

# Read monthly unemployment data
unrate <- readxl::read_xls("data-raw/uschange_fpp3.xls", sheet = "Monthly") %>%
  mutate(Month = yearmonth(observation_date)) %>%
  select(Month, everything(), -observation_date) %>%
  rename(Unemployment = UNRATE_20191004) %>%
  as_tsibble(index = Month)

# Select last month of each quarter
unrate <- unrate %>%
  mutate(Quarter = yearquarter(Month)) %>%
  index_by(Quarter) %>%
  summarise(Unemployment = tail(Unemployment, 1)) %>%
  filter_index("1969 Q4" ~ .)

# Read remaining quarterly data
other <- readxl::read_xls("data-raw/uschange_fpp3.xls", sheet = "Quarterly") %>%
  mutate(Quarter = yearquarter(observation_date)) %>%
  select(Quarter, everything(), -observation_date) %>%
  rename(
    Consumption = DPIC96_20191004,
    Income = IPB50001SQ_20191004,
    Production = PCECC96_20191004,
    Savings = PSAVE_20191004
  ) %>%
  as_tsibble(index = Quarter) %>%
  filter_index("1969 Q4" ~ .)

# Joint the two tsibbles and compute percentage changes
# need to take differences of the logs * 100 to have growth rates of these.
us_change <- inner_join(other, unrate) %>%
  mutate(
    Consumption = difference(log(Consumption)) * 100,
    Income = difference(log(Income)) * 100,
    Production = difference(log(Production)) * 100,
    Savings = difference(log(Savings)) * 100,
    Unemployment = difference(Unemployment)
  ) %>%
  filter_index("1970 Q1" ~ .)

us_change

# Compare with csv file
readr::read_csv("data-raw/uschange.csv") %>%
  mutate(Quarter = yearquarter(Time)) %>%
  select(Quarter, everything(), -Time) %>%
  as_tsibble(index = Quarter)

# usethis::use_data(us_change, overwrite = TRUE)
