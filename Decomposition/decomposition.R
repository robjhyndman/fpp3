library(fpp3)
library(readxl)


# data <- read_excel("Decomposition_Data.xls",
#                       sheet = "Monthly") %>%
#   mutate(DATE = yearmonth(DATE)) %>%
#   gather("series","value", -DATE) %>%
#   group_by(series) %>%
#   as_tsibble(key = series,index=DATE)
#
#   data %>%
#     autoplot(value) +
#   facet_grid(series ~ ., scales = "free_y")
#
#   data %>% pull(series) %>% unique()
#
#   data <- data %>% filter(series=="NHSDPC")%>%
#     filter(DATE>=yearquarter(1990))
#
#   dcmp <- data  %>%
#     STL(value~ trend(window=24),robust=TRUE)
#         # overide the default setting here to get a bit of a smoother trend
#         #stl(print-media, s.window=7, t.window=13, robust=TRUE)
#
#   dcmp %>%
#     ggplot(aes(x = DATE)) +
#     geom_line(aes(y = value, colour = "Data")) +
#     geom_line(aes(y = trend, colour = "Trend-cycle")) +
#     xlab("Year") + ylab("Thousands of houses") +
#     ggtitle("New Houses Sold by Stage of Construction, Completed") +
#     scale_colour_manual(values=c("Data"="gray","Trend-cycle"="red"),
#                         breaks=c("Data","Trend-cycle"))
#
#   autoplot(dcmp) + xlab("Year")
#
#   dcmp %>% gg_season(season_year) +
#     ggtitle("New Houses Sold by Stage of Construction, Completed")
#
#   dcmp %>%
#     ggplot(aes(x = DATE)) +
#     geom_line(aes(y = value, colour = "Data")) +
#     geom_line(aes(y = season_adjust, colour = "Seasonally Adjusted")) +
#     xlab("Year") + ylab("Turnover (million $AUD)") +
#     ggtitle("Newspaper and book retail turnover (Victoria, Australia)") +
#     scale_colour_manual(values=c("gray","blue"),
#                         breaks=c("Data","Seasonally Adjusted"))
#
#   data %>%
#     classical_decomposition(value, type = "additive") %>%
#     autoplot()
#
#   x11_dcmp <- data %>%
#     X11(value, type = "additive")
#   autoplot(x11_dcmp) + xlab("Year")

# Retail employment data
# After a few wasted hours I think I found a good example

  data <- read_excel("CEU4200000001.xls",
                     sheet = "FRED Graph",skip=10) %>%
    mutate(Date = yearmonth(Date)) %>%
    gather("series","value", -Date) %>%
    group_by(series) %>%
    as_tsibble(key = series,index=Date)

  data %>% autoplot()
  data <- data %>% filter(Date>=yearquarter(1990))

  dcmp <- data  %>%
    STL(value)
  # overide the default setting here to get a bit of a smoother trend
  #stl(print-media, s.window=7, t.window=13, robust=TRUE)

  dcmp %>%
    ggplot(aes(x = Date)) +
    geom_line(aes(y = value, colour = "Data")) +
    geom_line(aes(y = trend, colour = "Trend-cycle")) +
    xlab("Year") + ylab("Thousands of persons") +
    ggtitle("All Employees: Retail Trade, Thousands of Persons") +
    scale_colour_manual(values=c("Data"="gray","Trend-cycle"="red"),
                        breaks=c("Data","Trend-cycle"))

  autoplot(dcmp) + xlab("Year")

  dcmp %>% gg_season(season_year) +
    ggtitle("New Houses Sold by Stage of Construction, Completed")

  dcmp %>%
    ggplot(aes(x = Date)) +
    geom_line(aes(y = value, colour = "Data")) +
    geom_line(aes(y = season_adjust, colour = "Seasonally Adjusted")) +
    xlab("Year") + ylab("Turnover (million $AUD)") +
    ggtitle("Newspaper and book retail turnover (Victoria, Australia)") +
    scale_colour_manual(values=c("gray","blue"),
                        breaks=c("Data","Seasonally Adjusted"))

  data %>%
    classical_decomposition(value, type = "additive") %>%
    autoplot()

  x11_dcmp <- data %>%
    X11(value, type = "additive")
  autoplot(x11_dcmp) + xlab("Year")
