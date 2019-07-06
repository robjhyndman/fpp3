
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fpp3

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/fpp3)](https://cran.r-project.org/package=fpp3)
[![Travis build
status](https://travis-ci.org/fpp3/fpp3.svg?branch=master)](https://travis-ci.org/fpp3/fpp3)
<!-- badges: end -->

## Overview

The fpp3 package contains data used in the book [*Forecasting:
Principles and Practice* (3rd edition)](https://OTexts.com/fpp3) by Rob
J Hyndman and George Athanasopoulos. It also loads several packages
needed to do the analysis described in the book. These packages work
with the [tidyverse](https://www.tidyverse.org/) set of packages,
sharing common data representations and API design.

## Installation

``` r
# Currently, only the development version is available on GitHub
# install.packages("devtools")
devtools::install_github("robjhyndman/fpp3-package")
```

## Usage

`library(fpp3)` will load the following packages:

  - [dplyr](http://dplyr.tidyverse.org), for data manipulation.
  - [tibble](http://tibble.tidyverse.org), for tibbles, a modern
    re-imagining of data frames.
  - [tsibble](http://tsibble.tidyverts.org), for tsibbles, a time series
    version of a tibble.
  - [tsibbledata](http://tsibbledata.tidyverts.org), various time series
    data sets in the form of tsibbles.
  - [feasts](http://feasts.tidyverts.org), for features and statistics
    of time series.
  - [fable](http://fable.tidyverts.org), for fitting models and
    producing forecasts.
  - [lubridate](https://github.com/hadley/lubridate), for date/times.
  - [ggplot2](http://ggplot2.tidyverse.org), for data visualisation.

You also get a condensed summary of conflicts with other packages you
have loaded:

``` r
library(fpp3)
#> ── Attaching packages ───────────────────────────────────────────────────────────────────────────── fpp3 0.1 ──
#> ✔ dplyr       0.8.3          ✔ feasts      0.0.0.9001
#> ✔ tibble      2.1.3          ✔ fable       0.0.0.9100
#> ✔ tsibble     0.8.2.9000     ✔ lubridate   1.7.4     
#> ✔ tsibbledata 0.1.0.9000     ✔ ggplot2     3.2.0
#> ── Conflicts ──────────────────────────────────────────────────────────────────────────────── fpp3_conflicts ──
#> ✖ lubridate::as.difftime()  masks base::as.difftime()
#> ✖ lubridate::date()         masks base::date()
#> ✖ dplyr::filter()           masks stats::filter()
#> ✖ tsibble::id()             masks dplyr::id()
#> ✖ lubridate::intersect()    masks base::intersect()
#> ✖ lubridate::interval()     masks tsibble::interval()
#> ✖ dplyr::lag()              masks stats::lag()
#> ✖ lubridate::new_interval() masks tsibble::new_interval()
#> ✖ lubridate::setdiff()      masks base::setdiff()
#> ✖ lubridate::union()        masks base::union()
#> ✖ feasts::X11()             masks grDevices::X11()
```
