library(tidyverse)
library(readxl)
library(tsibble)
library(fpp3)

# US employment data

series <- read_excel("data-raw/US_employment/US_employment.xls", sheet = "Monthly") %>%
  rename(Month = "DATE") %>%
  mutate(Month = yearmonth(Month)) %>%
  gather("Series_ID", employment, -Month)  %>%
  group_by(Series_ID) %>%
  as_tsibble(key = Series_ID, index=Month)

# Filtering the US retail series
US_employment <- series %>%
  filter(Series_ID == "CEU4200000001",Month>=yearmonth(1985)) %>%
  autoplot(employment)

usethis::use_data(US_employment, overwrite = TRUE)
