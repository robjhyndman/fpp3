library(tidyverse)
library(tsibble)

# US employment data

us_employment <- read_tsv("data-raw/US_employment/US_employment_fpp3_Monthly.txt") %>%
  rename(Month = "observation_date") %>%
  mutate(Month = yearmonth(Month)) %>%
  gather("Series_ID", employment, -Month)  %>%
  as_tsibble(key = Series_ID, index=Month)

#readme <-

usethis::use_data(us_employment, overwrite = TRUE)
