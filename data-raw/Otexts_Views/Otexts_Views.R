library(fpp3)
library(readr)

# Data downloaded from Google Analytics

otexts_views <- readr::read_csv(file = here::here("data-raw/Otexts_Views/otexts_downloads.csv"), skip = 5) |>
  janitor::clean_names() |>
  transmute(Date = lubridate::dmy(day_index), Pageviews = page_views) |>
  head(-1) |>
  as_tsibble(index = Date)

usethis::use_data(otexts_views, overwrite=TRUE)
