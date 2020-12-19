library(tsibble)
library(tidyverse)
library(readabs)

aus_accommodation <- read_abs_local(filenames="8635010.xlsx", path="data-raw/AUS_accommodation/") %>%
  filter(series_type == "Original") %>%
  mutate(
    date = yearquarter(date),
    state = str_extract(series,";  [A-Za-z\\s\\(\\)]* ;"),
    state = str_trim(str_remove_all(state, ";")),
    series = str_trim(str_extract(series, "^[A-Za-z\\s]*"))
  ) %>%
  select(date, series, state, value) %>%
  pivot_wider(names_from="series", values_from="value") %>%
  rename(
    Takings = `Takings from accommodation`,
    Occupancy = `Room occupancy rate`
  ) %>%
  mutate(Takings = Takings / 1e6) %>%
  filter(state != "Total (Area)") %>%
  as_tsibble(index=date, key=state)

cpi <- read_abs_local(filenames="640101.xlsx", path="data-raw/AUS_accommodation/") %>%
  filter(str_detect(series,"Australia"), data_type=="INDEX") %>%
  mutate(date = yearquarter(date)) %>%
  select(date, value) %>%
  rename(cpi = value)

aus_accommodation <- aus_accommodation %>%
  left_join(cpi, by="date")

usethis::use_data(aus_accommodation, overwrite=FALSE)
