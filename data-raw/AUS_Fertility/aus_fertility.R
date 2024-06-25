library(fpp3)

# Data downloaded from https://www.abs.gov.au/statistics/people/population/births-australia/2022
# Fertility, by age, by state of usual residence
# on 30 May 2024
aus_fertility <- readr::read_csv("data-raw/AUS_Fertility/ABS_FERTILITY_AGE_STATE_1.0.0_...A.csv")
aus_fertility <- aus_fertility |>
  filter(`MEASURE: Measure` == "11: Fertility rate") |>
  select(-c(DATAFLOW, `MEASURE: Measure`, `FREQ: Frequency`, `UNIT_MEASURE: Unit of Measure`,
            `OBS_STATUS: Observation Status`, `OBS_COMMENT: Observation Comment`)) |>
  rename(Age = `AGE: Age`,
         Region = `REGION: Region`,
         Year = `TIME_PERIOD: Time Period`,
         Rate = OBS_VALUE) |>
  mutate(Age = stringr::str_split(Age, ": ", simplify = TRUE)[, 2],
         Region = stringr::str_split(Region, ": ", simplify = TRUE)[, 2]) |>
  filter(!(Age %in% c("15-19", "20-24", "25-29", "30-34", "35-39",
                      "40-44", "45-49", "All ages"))) |>
  select(Year, Region, Age, Rate) |>
  as_tsibble(index = Year, key = c(Age, Region))

usethis::use_data(aus_fertility, overwrite=TRUE)
