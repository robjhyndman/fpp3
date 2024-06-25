library(fpp3)
library(readabs)

aus_accommodation <- read_abs_local(filenames="8635010.xlsx", path=here::here("data-raw/AUS_accommodation/")) |>
  filter(series_type == "Original") |>
  mutate(
    Date = yearquarter(date),
    State = str_extract(series,";  [A-Za-z\\s\\(\\)]* ;"),
    State = str_trim(str_remove_all(State, ";")),
    series = str_trim(str_extract(series, "^[A-Za-z\\s]*"))
  ) |>
  select(Date, series, State, value) |>
  pivot_wider(names_from="series", values_from="value") |>
  rename(
    Takings = `Takings from accommodation`,
    Occupancy = `Room occupancy rate`
  ) |>
  mutate(Takings = Takings / 1e6) |>
  filter(State != "Total (Area)") |>
  as_tsibble(index=Date, key=State)

cpi <- read_abs_local(filenames="640101.xlsx", path=here::here("data-raw/AUS_accommodation/")) |>
  filter(str_detect(series,"Australia"), data_type=="INDEX") |>
  mutate(Date = yearquarter(date)) |>
  select(Date, value) |>
  rename(CPI = value)

aus_accommodation <- aus_accommodation |>
  left_join(cpi, by="Date")

usethis::use_data(aus_accommodation, overwrite=TRUE)
