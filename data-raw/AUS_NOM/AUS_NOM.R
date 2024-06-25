library(fpp3)

# Data downloaded from https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/
# on 30 May 2024
aus_migration <- readxl::read_xlsx(path = here::here("data-raw/Exams/AUS_NOM/migration_updated.xlsx"))[1:10] |>
  mutate(Quarter = yearquarter(Date)) |>
  pivot_longer(NSW:AUS, names_to = "State", values_to = "NOM") |>
  select(Quarter, State, NOM) |>
  as_tsibble(index = Quarter, key = State) |>
  filter(State != "AUS")

#aus_migration |> autoplot()
usethis::use_data(aus_migration, overwrite=TRUE)
