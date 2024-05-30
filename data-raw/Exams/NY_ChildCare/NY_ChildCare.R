library(tsibble)
library(tidyverse)
library(readr)

ny_childcare <- read_csv("data-raw/Exams/NY_ChildCare/SMU36935616562440001.csv") |>
  rename(
    Count = SMU36935616562440001
  ) |>
  mutate(Month = yearmonth(DATE)) |>
  select(Month, Count) |>
  as_tsibble(index = Month)

usethis::use_data(ny_childcare, overwrite=TRUE)
