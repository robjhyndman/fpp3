library(fpp3)

aus_outbound <- readxl::read_excel("data-raw/Exams/AUS_In_Out/TRA Consolidated data.xlsx",
                                   sheet = "Outbound departures monthly", skip = 5) |>
  rename_at(c(1, 2), ~ c("Purpose", "Country")) |>
  filter(Purpose != "Total", Country != "Total") |>
  pivot_longer(
    cols = -(1:2),
    names_to = "Month",
    values_to = "Count"
  ) |>
  mutate(
    Count = Count / 1000,
    Month = as.Date(as.numeric(Month), origin = "1899-12-30"),
    Month = tsibble::yearmonth(Month)
  ) |>
  filter(Month < yearmonth("2017 Jul")) |>
  select(Month, Country, Purpose, Count) |>
  as_tsibble(index = Month, key = c(Country, Purpose))

usethis::use_data(aus_outbound, overwrite = TRUE)
