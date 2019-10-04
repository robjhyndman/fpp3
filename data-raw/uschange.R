library(tidyverse)
library(readxl)
library(tsibble)

# US change

us_change <- readr::read_csv("data-raw/uschange.csv") %>%
  mutate(Quarter = yearquarter(Time)) %>%
  select(Quarter, everything(), -Time) %>%
  as_tsibble(index = Quarter)

usethis::use_data(us_change, overwrite = TRUE)

# US change NEW
unrate <- readxl::read_xls("data-raw/uschange_fpp3.xls", sheet = "Monthly") %>%
  mutate(Month = yearmonth(observation_date)) %>%
  select(Month, everything(), -observation_date) %>%
  rename(Unemployment=UNRATE_20191004) %>%
  as_tsibble(index = Month)

# need to aggregate to monthly by taking the last month of the quarter as the observation.
# then we take the differences of these, i.e., calculate the change of the rate
# then select 1970 onwards

other <- readxl::read_xls("data-raw/uschange_fpp3.xls", sheet = "Quarterly") %>%
  mutate(Quarter = yearquarter(observation_date)) %>%
  select(Quarter, everything(), -observation_date) %>%
  rename(Consumption=DPIC96_20191004,
         Income= IPB50001SQ_20191004,
         Production=PCECC96_20191004,
         Savings=PSAVE_20191004) %>%
  as_tsibble(index = Quarter) %>%
  filter_index("1969 Q4"~.)

# need to take differences of the logs * 100 to have growth rates of these.

# We then merge the two tsibbles.


