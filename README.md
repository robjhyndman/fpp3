
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fpp3

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/fpp3)](https://cran.r-project.org/package=fpp3)
[![Travis build
status](https://travis-ci.org/robjhyndman/fpp3-package.svg?branch=master)](https://travis-ci.org/robjhyndman/fpp3-package)
<!-- badges: end -->

## Overview

The fpp3 package contains data used in the book [*Forecasting:
Principles and Practice* (3rd edition)](https://OTexts.com/fpp3) by Rob
J Hyndman and George Athanasopoulos. It also loads several packages
needed to do the analysis described in the book. These packages work
with the [tidyverse](https://www.tidyverse.org/) set of packages,
sharing common data representations and API design.

## Installation

You can install the **stable** version from
[CRAN](https://cran.r-project.org/package=fpp3).

``` r
install.packages('fpp3', dependencies = TRUE)
```

You can install the **development** version from
[Github](https://github.com/robjhyndman/fpp3-package)

``` r
# install.packages("remotes")
remotes::install_github("robjhyndman/fpp3-package")
```

## Usage

`library(fpp3)` will load the following packages:

  - [tibble](https://tibble.tidyverse.org), for tibbles, a modern
    re-imagining of data frames.
  - [dplyr](https://dplyr.tidyverse.org), for data manipulation.
  - [tidyr](https://tidyr.tidyverse.org), to easily tidy data using
    `spread()` and `gather()`.
  - [lubridate](https://lubridate.tidyverse.org), for date/times.
  - [ggplot2](https://ggplot2.tidyverse.org), for data visualisation.
  - [tsibble](https://tsibble.tidyverts.org), for tsibbles, a time
    series version of a tibble.
  - [tsibbledata](https://tsibbledata.tidyverts.org), various time
    series data sets in the form of tsibbles.
  - [feasts](https://feasts.tidyverts.org), for features and statistics
    of time series.
  - [fable](https://fable.tidyverts.org), for fitting models and
    producing forecasts.

You also get a condensed summary of conflicts with other packages you
have loaded:

``` r
library(fpp3)
#> ── Attaching packages ──────────────────────────────────────────────────── fpp3 0.3 ──
#> ✓ tibble      3.0.1          ✓ tsibble     0.9.0     
#> ✓ dplyr       1.0.0          ✓ tsibbledata 0.2.0.9000
#> ✓ tidyr       1.1.0          ✓ feasts      0.1.3     
#> ✓ lubridate   1.7.8          ✓ fable       0.2.0     
#> ✓ ggplot2     3.3.1
#> ── Conflicts ─────────────────────────────────────────────────────── fpp3_conflicts ──
#> x lubridate::date()   masks base::date()
#> x dplyr::filter()     masks stats::filter()
#> x tsibble::interval() masks lubridate::interval()
#> x dplyr::lag()        masks stats::lag()
```
