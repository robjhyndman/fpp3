library(fpp3)

# Data downloaded from
# https://www.abs.gov.au/statistics/people/population/births-australia/latest-release
# on 30 May 2024
# Omitted 2022 due to delayed registrations not showing in data for Nov-Dec 2022

aus_births <- readr::read_csv(file = here::here("data-raw/AUS_Births/ABS_BIRTH_MONTH_OCCURANCE_Updated.csv")) |>
  rename(Month = `Month of occurence`) |>
  filter(Month != "Total", State != "AUS") |>
  pivot_longer("1975":"2022", names_to = "Year", values_to = "Births") |>
  unite("Month", Year:Month, sep = " ") |>
  mutate(Month = yearmonth(Month)) |>
  filter(year(Month) <= 2021) |>
  as_tsibble(index = Month, key = State)

usethis::use_data(aus_births, overwrite = TRUE)
