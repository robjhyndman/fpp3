library(fpp3)

# Data download from?????

aus_cigtob <- readxl::read_xlsx(path ="data-raw/Exams/AUS_CigTob_Exp/CigTob_Updated.xlsx") |>
  mutate(Quarter = yearquarter(Quarter)) |>
  pivot_longer(VIC:ACT, names_to = "State", values_to = "Expenditure") |>
  mutate(Expenditure = Expenditure / 1e3) |>
  as_tsibble(index = Quarter, key = State)

#aus_cigtob |> autoplot(Expenditure) + scale_y_log10()
usethis::use_data(aus_cigtob, overwrite=TRUE)
