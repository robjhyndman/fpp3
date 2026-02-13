# Australian accommodation data

`aus_accommodation` contains quarterly data on Australian tourist
accommodation from short-term non-residential accommodation with 15 or
more rooms, 1998 Q1 - 2016 Q2. The data set also contains the Australian
Consumer Price Index (CPI) for the same period. Takings are in millions
of Australian dollars, Occupancy is a percentage of rooms occupied, CPI
is an index with value 100 in 2012 Q1.

## Format

Time series of class \`tsibble\`

## Source

Australian Bureau of Statistics, Cat No 8635.0, Table 10, and Cat No
6401.0, Table 1.

## Examples

``` r
aus_accommodation
#> # A tsibble: 592 x 5 [1Q]
#> # Key:       State [8]
#>       Date State                        Takings Occupancy   CPI
#>      <qtr> <chr>                          <dbl>     <dbl> <dbl>
#>  1 1998 Q1 Australian Capital Territory    24.3      65    67  
#>  2 1998 Q2 Australian Capital Territory    22.3      59    67.4
#>  3 1998 Q3 Australian Capital Territory    22.5      58    67.5
#>  4 1998 Q4 Australian Capital Territory    24.4      59    67.8
#>  5 1999 Q1 Australian Capital Territory    23.7      58    67.8
#>  6 1999 Q2 Australian Capital Territory    25.4      61    68.1
#>  7 1999 Q3 Australian Capital Territory    28.2      66    68.7
#>  8 1999 Q4 Australian Capital Territory    25.8      60    69.1
#>  9 2000 Q1 Australian Capital Territory    27.3      60.9  69.7
#> 10 2000 Q2 Australian Capital Territory    30.1      64.7  70.2
#> # ℹ 582 more rows
```
