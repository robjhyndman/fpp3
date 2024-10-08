library(fpp3)

# Data downloaded from https://www.bocsar.nsw.gov.au/Pages/bocsar_datasets/Offence.aspx

nsw_offences <- readr::read_csv(here::here("data-raw/NSW_Offence/RCI_offencebymonth.csv"))

nsw_offences <- nsw_offences |>
  pivot_longer(-(1:3), names_to = "Month", values_to = "Count") |>
  rename(Type = `Offence category`) |>
  group_by(Type, Month) |>
  summarise(Count = sum(Count)) |>
  select(Month, Type, Count) |>
  mutate(Month = lubridate::my(Month),
         Month = yearmonth(Month)) |>
  ungroup() |>
  tsibble(index = Month, key = Type)

usethis::use_data(nsw_offences, overwrite=TRUE)

