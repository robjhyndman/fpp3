library(tidyverse)
library(readxl)
library(tsibble)

# US change

us_change <- readr::read_csv("data-raw/uschange.csv") %>%
  mutate(Quarter = yearquarter(Time)) %>%
  select(Quarter, everything(), -Time) %>%
  as_tsibble(index = Quarter)

usethis::use_data(us_change, overwrite = TRUE)
