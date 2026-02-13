# International Arrivals to Australia

Quarterly international arrivals to Australia from Japan, New Zealand,
UK and the US. 1981Q1 - 2012Q3.

## Format

Quarterly time series of class \`tsibble\`.

## Source

Tourism Research Australia.

## Examples

``` r
aus_arrivals
#> # A tsibble: 508 x 3 [1Q]
#> # Key:       Origin [4]
#>    Quarter Origin Arrivals
#>      <qtr> <chr>     <int>
#>  1 1981 Q1 Japan     14763
#>  2 1981 Q2 Japan      9321
#>  3 1981 Q3 Japan     10166
#>  4 1981 Q4 Japan     19509
#>  5 1982 Q1 Japan     17117
#>  6 1982 Q2 Japan     10617
#>  7 1982 Q3 Japan     11737
#>  8 1982 Q4 Japan     20961
#>  9 1983 Q1 Japan     20671
#> 10 1983 Q2 Japan     12235
#> # ℹ 498 more rows
```
