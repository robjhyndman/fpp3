library(fpp3)

## Data downloaded from
# https://fred.stlouisfed.org/series/SMU36935616562440001
# on 30 May 2024

ny_childcare <- readr::read_csv(here::here("data-raw/NY_ChildCare/SMU36935616562440001.csv")) |>
  rename(Count = SMU36935616562440001) |>
  mutate(Month = yearmonth(DATE)) |>
  select(Month, Count) |>
  as_tsibble(index = Month)

#ny_childcare |> autoplot()

usethis::use_data(ny_childcare, overwrite=TRUE)
