library(fpp3)

# Data from
# https://www.abs.gov.au/statistics/economy/national-accounts/australian-national-accounts-national-income-expenditure-and-product/mar-2024
# We downloaded the data files for each state separately
# (For example "Table 27. State Final Demand, Detailed Components: Victoria"
# for Victoria), and merged the respective cigarettes and tobacco expenditure
# data into a single data set.

aus_tobacco <- readxl::read_xlsx(path = here::here("data-raw/AUS_CigTob_Exp/CigTob_Updated.xlsx")) |>
  mutate(Quarter = yearquarter(Quarter)) |>
  pivot_longer(VIC:ACT, names_to = "State", values_to = "Expenditure") |>
  mutate(Expenditure = Expenditure / 1e3) |>
  as_tsibble(index = Quarter, key = State)

#aus_tobacco |> autoplot(Expenditure) + scale_y_log10()
usethis::use_data(aus_tobacco, overwrite=TRUE)
