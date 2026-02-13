# Australian fertility rates

`aus_fertility` contains annual data on one measured variable:

|       |                                     |
|-------|-------------------------------------|
| Rate: | Fertility rate (per thousand women) |

## Format

Time series of class \`tsibble\`

## Source

Australian Bureau of Statistics.
<https://www.abs.gov.au/statistics/people/population/births-australia/2022>

## Details

Each series is uniquely identified using two keys:

|         |                                   |
|---------|-----------------------------------|
| Region: | Australia, states and territories |
| Age:    | Age of the woman                  |

based on calendar year of registration data. It covers the period from
1975–2022.

## Examples

``` r
aus_fertility
#> # A tsibble: 15,120 x 4 [1Y]
#> # Key:       Age, Region [315]
#>     Year Region    Age    Rate
#>    <dbl> <chr>     <chr> <dbl>
#>  1  1975 Australia 15      7  
#>  2  1976 Australia 15      6.6
#>  3  1977 Australia 15      5.7
#>  4  1978 Australia 15      5.5
#>  5  1979 Australia 15      5.1
#>  6  1980 Australia 15      4.8
#>  7  1981 Australia 15      4.8
#>  8  1982 Australia 15      4.7
#>  9  1983 Australia 15      4.9
#> 10  1984 Australia 15      3.8
#> # ℹ 15,110 more rows
```
