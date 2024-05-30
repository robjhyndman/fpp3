library(tsibble)
library(tidyverse)
library(readxl)

aus_nom <- read_xlsx(path ="data-raw/Exams/AUS_NOM/migration_Updated.xlsx")[1:10] |>
  mutate(Quarter = yearquarter(Date)) |>
  pivot_longer(NSW:AUS, names_to = "State", values_to = "NOM") |>
  select(Quarter, State, NOM) |>
  as_tsibble(index = Quarter, key = State)

usethis::use_data(aus_nom, overwrite=TRUE)
