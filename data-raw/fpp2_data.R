#Copy of fpp2 data
library(tidyverse)
library(tsibble)

# Gasoline

us_gasoline <- as_tsibble(fpp2::gasoline) %>%
  rename(
    Week = index,
    Barrels = value
  )
usethis::use_data(us_gasoline, overwrite = TRUE)

# Canadian gas

canadian_gas <- as_tsibble(expsmooth::cangas) %>%
  rename(
    Month = index,
    Volume = value
  )
usethis::use_data(canadian_gas, overwrite = TRUE)

# Aus air and Guinea rice
aus_airpassengers <- as_tsibble(window(fpp2::ausair, end=2011)) %>%
  rename(
    Year = index,
    Passengers = value
  )
usethis::use_data(aus_airpassengers, overwrite = TRUE)

guinea_rice <- as_tsibble(fpp2::guinearice) %>%
  rename(
    Year = index,
    Production = value
  )
usethis::use_data(guinea_rice, overwrite = TRUE)

# aus arrivals

aus_arrivals <- as_tsibble(fpp2::arrivals) %>%
  rename(
    Quarter = index,
    Origin = key,
    Arrivals = value
  ) %>%
  mutate(
    Arrivals = as.integer(Arrivals * 1e3)
  )
usethis::use_data(aus_arrivals, overwrite = TRUE)

# Calls
# Simpler to just read from the raw file rather than from fpp2

bank_calls <- read_delim("https://robjhyndman.com/data/callcenter.txt",
                         delim="\t", locale = locale(tz="US/Eastern")) %>%
  rename(Time = X1) %>%
  pivot_longer(-Time, names_to="Date", values_to="Calls") %>%
  mutate(
    Date = dmy(Date),
    DateTime = as_datetime(paste(Date, Time)),
  ) %>%
  as_tsibble(index=DateTime) %>%
  select(DateTime, Date, Time, Calls)
usethis::use_data(bank_calls, overwrite = TRUE)
