# List all packages loaded by fpp3

List all packages loaded by fpp3

## Usage

``` r
fpp3_packages(include_self = FALSE)
```

## Arguments

- include_self:

  Include fpp3 in the list?

## Value

A character vector of package names.

## Examples

``` r
fpp3_packages()
#>  [1] "cli"         "crayon"      "dplyr"       "fable"       "feasts"     
#>  [6] "ggplot2"     "ggtime"      "lubridate"   "purrr"       "rstudioapi" 
#> [11] "tibble"      "tidyr"       "tsibble"     "tsibbledata"
```
