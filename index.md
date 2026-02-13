# fpp3

## Overview

The fpp3 package contains data used in the book [*Forecasting:
Principles and Practice* (3rd edition)](https://OTexts.com/fpp3/) by Rob
J Hyndman and George Athanasopoulos. It also loads several packages
needed to do the analysis described in the book. These packages work
with the [tidyverse](https://tidyverse.org/) set of packages, sharing
common data representations and API design. Additional data sets not
used in the book are also included.

## Installation

You can install the **stable** version from
[CRAN](https://cran.r-project.org/package=fpp3).

``` r
pak::pak("fpp3")
```

You can install the **development** version from
[Github](https://github.com/robjhyndman/fpp3)

``` r
# install.packages("remotes")
pak::pak("robjhyndman/fpp3")
```

## Usage

[`library(fpp3)`](https://pkg.robjhyndman.com/fpp3/) will load the
following packages:

- [tibble](https://tibble.tidyverse.org), for tibbles, a modern
  re-imagining of data frames.
- [dplyr](https://dplyr.tidyverse.org), for data manipulation.
- [tidyr](https://tidyr.tidyverse.org), to tidy data.
- [lubridate](https://lubridate.tidyverse.org), for dates/times.
- [ggplot2](https://ggplot2.tidyverse.org), for data visualisation.
- [tsibble](https://tsibble.tidyverts.org), for tsibbles, a time series
  version of a tibble.
- [tsibbledata](https://tsibbledata.tidyverts.org), various time series
  data sets in the form of tsibbles.
- [ggtime](https://ggtime.tidyverts.org), for time series visualisation.
- [feasts](https://feasts.tidyverts.org), for features and statistics of
  time series.
- [fable](https://fable.tidyverts.org), for fitting models and producing
  forecasts.

You also get a condensed summary of conflicts with other packages you
have loaded:

``` r
library(fpp3)
#> ── Attaching packages ──────────────────────────────────────────── fpp3 1.0.3 ──
#> ✔ tibble      3.3.1     ✔ tsibble     1.2.0
#> ✔ dplyr       1.2.0     ✔ tsibbledata 0.4.1
#> ✔ tidyr       1.3.2     ✔ ggtime      0.2.0
#> ✔ lubridate   1.9.5     ✔ feasts      0.5.0
#> ✔ ggplot2     4.0.2     ✔ fable       0.5.0
#> ── Conflicts ───────────────────────────────────────────────── fpp3_conflicts ──
#> ✖ lubridate::date()    masks base::date()
#> ✖ dplyr::filter()      masks stats::filter()
#> ✖ tsibble::intersect() masks base::intersect()
#> ✖ tsibble::interval()  masks lubridate::interval()
#> ✖ dplyr::lag()         masks stats::lag()
#> ✖ tsibble::setdiff()   masks base::setdiff()
#> ✖ tsibble::union()     masks base::union()
```
