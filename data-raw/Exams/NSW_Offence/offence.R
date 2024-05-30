library(tidyverse)
library(tsibble)

offences <- read_csv("data-raw/Exams/NSW_Offence/RCI_offencebymonth.csv")
colnames(offences)[4:ncol(offences)] <- as.character(yearmonth("Jan 1995") + 0:347)

offences <- offences %>%
  pivot_longer(`1995 Jan`:`2023 Dec`, names_to = "Month", values_to = "Count") %>%
  rename(Type = `Offence category`) %>%
  group_by(Type, Month) %>%
  summarise(Count = sum(Count)) %>%
  select(Month, Type, Count) %>%
  mutate(Month = yearmonth(Month)) %>%
  ungroup() %>%
  tsibble(index = Month, key = Type)

usethis::use_data(offences, overwrite=TRUE)

