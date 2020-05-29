library(tidyverse)
library(tsibble)

# US employment data
# Data download from https://research.stlouisfed.org/pdl/1215

us_employment <- read_tsv(
  "data-raw/US_employment/US_employment_fpp3_Monthly.txt",
  col_types = cols(
    .default = col_double(),
    observation_date = col_date(format = "")
  )) %>%
  rename(Month = "observation_date") %>%
  mutate(Month = yearmonth(Month)) %>%
  gather("Series_ID", Employed, -Month)  %>%
  separate(Series_ID, "Series_ID", extra = "drop") %>%
  as_tsibble(key = Series_ID, index=Month)

readme <- read_lines("data-raw/US_employment/US_employment_fpp3_README.txt") %>%
  {split(., cumsum(str_detect(., "Series ID")))[-1]} %>%
  map_dfr(function(desc){
    desc <- desc[seq_len(str_which(desc, "The source code is") - 1)]
    map_dfc(split(desc, cumsum(lead(str_detect(desc, "^-{5,}")))), function(x){
      set_names(list(paste0(na.omit(str_extract(x[-(1:2)], "^.*?(?=\\s{2})")), collapse = " ")), str_extract(x[1], "^\\S*"))
    })
  }) %>%
  transmute(
    Series_ID = Series,
    Title = str_remove(Title, "All Employees: ")
  )

us_employment <- left_join(us_employment, readme, by = "Series_ID") %>%
  select(Month, Series_ID, Title, Employed)

usethis::use_data(us_employment, overwrite = TRUE)
