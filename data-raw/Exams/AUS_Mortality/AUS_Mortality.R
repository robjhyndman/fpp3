library(tsibble)
library(tidyverse)
library(readr)

aus_mortality <- read_csv(file ="./data-raw/Exams/AUS_Mortality/AUSstmfout_updated.csv",
                          name_repair = "minimal")
colnames(aus_mortality)[5:10] <- paste0(colnames(aus_mortality)[5:10], "_count")
colnames(aus_mortality)[11:16] <- paste0(colnames(aus_mortality)[11:16], "_rate")
aus_mortality <- aus_mortality  |>
  mutate(across(ends_with("_rate"), ~ .x * 1000)) |>
  pivot_longer(ends_with(c("_count", "_rate")), names_sep = "_",
               names_to = c("Age", "Type"),
               values_to = "Mortality") |>
  mutate(
    Week = make_yearweek(year = Year, week = Week)
  ) |>
  select(Week, Sex, Age, Type, Mortality, Forecast) |>
  as_tsibble(index = Week, key = c(Sex, Age, Type))

usethis::use_data(aus_mortality, overwrite=TRUE)
