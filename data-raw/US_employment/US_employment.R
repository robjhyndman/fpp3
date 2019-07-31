library(tidyverse)
library(readxl)
library(tsibble)
library(fpp3)

# US employment data

US_employment <- read_excel("data-raw/US_employment/US_employment.xls", sheet = "Monthly") %>%
  rename(Month = "DATE") %>%
  mutate(Month = yearmonth(Month)) %>%
  gather("Series_ID", employment, -Month)  %>%
  group_by(Series_ID) %>%
  as_tsibble(key = Series_ID, index=Month)

usethis::use_data(US_employment, overwrite = TRUE)
