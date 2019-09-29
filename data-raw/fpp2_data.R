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
