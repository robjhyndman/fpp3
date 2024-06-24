# Copy of fpp2 data
library(tidyverse)
library(tsibble)

# Gasoline

us_gasoline <- as_tsibble(fpp2::gasoline) |>
  rename(
    Week = index,
    Barrels = value
  )
usethis::use_data(us_gasoline, overwrite = TRUE)

# Canadian gas

canadian_gas <- as_tsibble(expsmooth::cangas) |>
  rename(
    Month = index,
    Volume = value
  )
usethis::use_data(canadian_gas, overwrite = TRUE)

# Aus air and Guinea rice
aus_airpassengers <- as_tsibble(fpp2::ausair) |>
  rename(
    Year = index,
    Passengers = value
  )
usethis::use_data(aus_airpassengers, overwrite = TRUE)

guinea_rice <- as_tsibble(fpp2::guinearice) |>
  rename(
    Year = index,
    Production = value
  )
usethis::use_data(guinea_rice, overwrite = TRUE)

# aus arrivals

aus_arrivals <- as_tsibble(fpp2::arrivals) |>
  rename(
    Quarter = index,
    Origin = key,
    Arrivals = value
  ) |>
  mutate(
    Arrivals = as.integer(Arrivals * 1e3)
  )
usethis::use_data(aus_arrivals, overwrite = TRUE)

# Calls
# Simpler to just read from the raw file rather than from fpp2

bank_calls <- read_delim("https://robjhyndman.com/data/callcenter.txt",
    delim = "\t", locale = locale(tz = "US/Eastern")
  ) |>
  rename(Time = X1) |>
  pivot_longer(-Time, names_to = "Date", values_to = "Calls") |>
  mutate(
    Date = dmy(Date),
    DateTime = as_datetime(paste(Date, Time)),
  ) |>
  as_tsibble(index = DateTime) |>
  select(DateTime, Calls)
usethis::use_data(bank_calls, overwrite = TRUE)

## Various price series from fma, starting in 1800
prices <- cbind(
    eggs = fma::eggs,
    chicken = fma::chicken,
    copper = fma::copper,
    nails = fma::nail,
    oil = fma::oilprice,
    wheat = fma::wheat
  ) |>
  window(start = 1800)
prices <- prices |>
  as_tibble() |>
  mutate(year = tsibble:::time_to_date(prices)) |>
  as_tibble() |>
  select(year, everything()) |>
  as_tsibble(index = year)
usethis::use_data(prices, overwrite = TRUE)

# Fancy sales
souvenirs <- as_tsibble(fma::fancy) |>
  rename(Month = index, Sales = value)
usethis::use_data(souvenirs, overwrite = TRUE)

# Insurance
insurance <- as_tsibble(fpp2::insurance) |>
  pivot_wider(names_from="key", values_from="value") |>
  rename(
    Month = index,
    TVadverts = TV.advert
  )
usethis::use_data(insurance, overwrite = TRUE)
