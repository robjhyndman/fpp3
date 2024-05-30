library(tsibble)
library(tidyverse)
library(readxl)

aus_cigtob <- read_xlsx(path ="data-raw/Exams/AUS_CigTob_Exp/CigTob_Updated.xlsx") |>
  mutate(Quarter = yearquarter(Quarter)) |>
  pivot_longer(VIC:ACT, names_to = "State", values_to = "Expd") |>
  mutate(Expd = Expd / 1e3) |>
  as_tsibble(index = Quarter, key = State)

usethis::use_data(aus_cigtob, overwrite=TRUE)
