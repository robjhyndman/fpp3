library(rwalkr)
library(fpp3)

start <- as.Date("2019-01-01")
end <- as.Date("2024-05-29")
pedestrian <- melb_walk(from = start, to = end, na.rm = FALSE, session = NULL)

daily_walkers <- pedestrian |>
  mutate(Count = as.numeric(Count)) |>
  group_by(Date, Sensor) |>
  summarise(Count = sum(Count, na.rm=TRUE)) |>
  ungroup() |>
  mutate(Count = if_else(Count == 0L, NA_integer_, Count)) |>
  as_tsibble(index = Date, key = Sensor)

# Remove censors with large numbers of missing values
nmiss <- daily_walkers |>
  as_tibble() |>
  group_by(Sensor) |>
  summarise(nmiss = sum(is.na(Count))) |>
  filter(nmiss < 10)

# Interpolate missing values
daily_walkers <- daily_walkers |>
  filter(Sensor %in% nmiss$Sensor) |>
  mutate(Count = zoo::na.approx(Count))

daily_walkers <- daily_walkers |>
  as_tibble() |>
  group_by(Date) |>
  summarise(Count = mean(Count)/1e3) |>
  as_tsibble(index = Date)

usethis::use_data(daily_walkers, overwrite=TRUE)
