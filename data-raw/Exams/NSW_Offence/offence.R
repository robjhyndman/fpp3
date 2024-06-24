library(fpp3)

# Data downloaded from https://www.bocsar.nsw.gov.au/Pages/bocsar_datasets/Offence.aspx

offences <- readr::read_csv("data-raw/Exams/NSW_Offence/RCI_offencebymonth.csv")

offences <- offences |>
  pivot_longer(-(1:3), names_to = "Month", values_to = "Count") |>
  rename(Type = `Offence category`) |>
  group_by(Type, Month) |>
  summarise(Count = sum(Count)) |>
  select(Month, Type, Count) |>
  mutate(Month = lubridate::my(Month),
         Month = yearmonth(Month)) |>
  ungroup() |>
  tsibble(index = Month, key = Type)

usethis::use_data(offences, overwrite=TRUE)
