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
unrate <- readxl::read_xls("data-raw/US_change.xls", sheet = "Monthly") %>%
  mutate(Month = yearmonth(DATE)) %>%
  select(Month, everything(), -DATE) %>%
  as_tsibble(index = Month)

# need to aggregate to monthly by taking the last month of the quarter observation.
# then we take the differences of these, i.e., change on the rate

other <- readxl::read_xls("data-raw/US_change.xls", sheet = "Quarterly") %>%
  mutate(Quarter = yearquarter(DATE)) %>%
  select(Quarter, everything(), -DATE) %>%
  as_tsibble(index = Quarter) %>%
  filter_index("1969 Q4"~.)

# need to take differences of the logs * 100 to have growth rates of these.

# We then merge the two tsibbles.


