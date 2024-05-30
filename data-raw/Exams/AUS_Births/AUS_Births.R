library(tsibble)
library(tidyverse)
library(readr)

aus_births <- read_csv(file ="data-raw/Exams/AUS_Births/ABS_BIRTH_MONTH_OCCURANCE_Updated.csv") |>
  rename(Month = `Month of occurence`) |>
  filter(Month != "Total") |>
  pivot_longer("1975":"2022", names_to = "Year", values_to = "Births") |>
  unite("Month", Year:Month, sep = " ") |>
  mutate(Month = yearmonth(Month)) |>
  as_tsibble(index = Month, key = State)

usethis::use_data(aus_births, overwrite=TRUE)
