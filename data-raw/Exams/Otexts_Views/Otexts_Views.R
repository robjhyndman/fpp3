library(tsibble)
library(tidyverse)
library(readr)

otexts_views <- read_csv(file ="./data-raw/Exams/Otexts_Views/otexts_downloads.csv", skip = 5) |>
  janitor::clean_names() |>
  transmute(Date = lubridate::dmy(day_index), Pageviews = page_views / 1e3) |>
  head(-1) |>
  as_tsibble(index = Date)

usethis::use_data(otexts_views, overwrite=TRUE)
