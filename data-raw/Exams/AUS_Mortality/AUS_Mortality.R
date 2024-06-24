library(fpp3)

# Data downloaded from
# https://mortality.org/Data/STMF on 29 May 2024

aus_mortality <- readr::read_csv(file ="./data-raw/Exams/AUS_Mortality/AUSstmfout_updated.csv",
                          name_repair = "minimal")
colnames(aus_mortality)[5:10] <- paste0(colnames(aus_mortality)[5:10], "_count")
colnames(aus_mortality)[11:16] <- paste0(colnames(aus_mortality)[11:16], "_rate")
aus_mortality <- aus_mortality  |>
  #mutate(across(ends_with("_rate"), ~ .x * 1000)) |>
  pivot_longer(ends_with(c("_count", "_rate")), names_sep = "_",
               names_to = c("Age", "Type"),
               values_to = "Mortality") |>
  mutate(
    Week = make_yearweek(year = Year, week = Week)
  ) |>
  select(Week, Sex, Age, Type, Mortality) |>
  pivot_wider(values_from = Mortality, names_from = Type) |>
  rename(Deaths = count, Mortality = rate) |>
  mutate(Sex = recode(Sex, b = "Both", f = "Female", m = "Male")) |>
  as_tsibble(index = Week, key = c(Sex, Age))

# aus_mortality |> autoplot(Mortality)
usethis::use_data(aus_mortality, overwrite=TRUE)
