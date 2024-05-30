library(tidyverse)
library(tsibble)

aus_inbound <- readxl::read_excel("data-raw/Exams/AUS_In_Out/TRA Consolidated data.xlsx",
                                  sheet = "Inbound arrivals monthly", skip = 5) %>%
  rename_at(c(1, 2), ~ c("Country", "Purpose")) %>%
  filter(Purpose != "Total", Country != "Total") %>%
  pivot_longer(
    cols = -(1:2),
    names_to = "Month",
    values_to = "Count"
  ) %>%
  mutate(
    Count = Count / 1000,
    Month = as.Date(as.numeric(Month), origin = "1899-12-30"),
    Month = tsibble::yearmonth(Month)
  ) %>%
  select(Month, Country, Purpose, Count) %>%
  as_tsibble(index = Month, key = c(Country, Purpose))

usethis::use_data(aus_inbound, overwrite = TRUE)
