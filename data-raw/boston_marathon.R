library(rvest)
library(stringr)
library(tidyverse)

web <- read_html("https://www.baa.org/races/boston-marathon/results/champions")

event_names <- html_node(web, "#rte") %>%
  html_nodes("h5") %>%
  html_text() %>%
  str_to_sentence()

event_data <- html_node(web, "#rte") %>%
  html_nodes("table") %>%
  html_table() %>%
  set_names(event_names) %>%
  bind_rows(.id = "id") %>%
  set_names(c("Event", "Year", "Champion", "Country", "Time"))

boston_marathon <- event_data %>%
  mutate(
    Event = factor(Event),
    Time = hms::as_hms(Time)
  ) %>%
  as_tsibble(index = Year, key = Event)

usethis::use_data(boston_marathon, overwrite = TRUE)
