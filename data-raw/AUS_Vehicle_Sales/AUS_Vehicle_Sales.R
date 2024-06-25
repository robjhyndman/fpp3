library(fpp3)

# Data downloaded from
# https://www.abs.gov.au/statistics/industry/tourism-and-transport/sales-new-motor-vehicles/dec-2017.
# Cat No. 931401.

aus_vehicle_sales <- readxl::read_xls(path =here::here("data-raw/AUS_Vehicle_Sales/931401.xls"),
                       sheet = 2,
                       col_names = FALSE,
                       skip = 10)[1:4]
colnames(aus_vehicle_sales) <- c("Month", "Passenger", "SUV", "Other")
aus_vehicle_sales <- aus_vehicle_sales |>
  mutate(Month = yearmonth(Month)) |>
  pivot_longer(Passenger:Other, names_to = "Type", values_to = "Count") |>
  mutate(Count = Count) |>
  as_tsibble(index = Month, key = Type)

usethis::use_data(aus_vehicle_sales, overwrite=TRUE)
