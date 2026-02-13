# Australian births data

Number of births in Australia.

## Format

Time series of class \`tsibble\`

## Source

Australian Bureau of Statistics.
<https://www.abs.gov.au/statistics/people/population/births-australia/2022>

## Details

`aus_births` contains monthly data with one measured variable:

|           |                  |
|-----------|------------------|
| `Births`: | Number of births |

from January 1975 to December 2021 for the 6 states and 2 territories of
Australia, indexed by:

|          |             |
|----------|-------------|
| `Month`: | Year-month. |

\#' Each series is uniquely identified using the key:

|                                  |     |
|----------------------------------|-----|
| `State`: The state or territory. |     |

## Examples

``` r
aus_births
#> # A tsibble: 4,512 x 3 [1M]
#> # Key:       State [8]
#>    State    Month Births
#>    <chr>    <mth>  <dbl>
#>  1 ACT   1975 Jan    320
#>  2 ACT   1975 Feb    333
#>  3 ACT   1975 Mar    342
#>  4 ACT   1975 Apr    348
#>  5 ACT   1975 May    336
#>  6 ACT   1975 Jun    374
#>  7 ACT   1975 Jul    372
#>  8 ACT   1975 Aug    354
#>  9 ACT   1975 Sep    361
#> 10 ACT   1975 Oct    337
#> # ℹ 4,502 more rows
```
