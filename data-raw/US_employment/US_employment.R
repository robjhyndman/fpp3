library(tidyverse)
library(readxl)
library(tsibble)

# US employment data

us_employment <- read_excel("data-raw/US_employment/US_employment.xls", sheet = "Monthly") %>%
  rename(Month = "DATE") %>%
  mutate(Month = yearmonth(Month)) %>%
  gather("Series_ID", employment, -Month)  %>%
  as_tsibble(key = Series_ID, index=Month)

usethis::use_data(us_employment, overwrite = TRUE)
