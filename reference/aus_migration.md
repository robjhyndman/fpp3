# Australian migration data

Net Overseas Migration (NOM) to Australia.

## Format

Time series of class \`tsibble\`

## Source

Australian Bureau of Statistics.
<https://www.abs.gov.au/statistics/people/population/national-state-and-territory-population/dec-2023>.
Cat No. 310102.

## Details

`aus_migration` contains quarterly data with one measured variable:

|        |                                                                                                   |
|--------|---------------------------------------------------------------------------------------------------|
| `NOM`: | The net gain or loss of population through immigration to Australia and emigration from Australia |

from 1981 Q2 to 2023 Q3 for the 6 states and 2 territories of Australia,
indexed by:

|            |               |
|------------|---------------|
| `Quarter`: | Year-quarter. |

NOM is based on an international traveller's duration of stay being in
or out of Australia for 12 months or more, over a 16 month period.

Each series is uniquely identified using the key:

|                                  |     |
|----------------------------------|-----|
| `State`: The state or territory. |     |

## Examples

``` r
aus_migration
#> # A tsibble: 1,360 x 3 [1Q]
#> # Key:       State [8]
#>    Quarter State   NOM
#>      <qtr> <chr> <dbl>
#>  1 1981 Q2 ACT    -131
#>  2 1981 Q3 ACT     152
#>  3 1981 Q4 ACT     383
#>  4 1982 Q1 ACT     419
#>  5 1982 Q2 ACT     271
#>  6 1982 Q3 ACT      80
#>  7 1982 Q4 ACT     209
#>  8 1983 Q1 ACT     283
#>  9 1983 Q2 ACT     -31
#> 10 1983 Q3 ACT     199
#> # ℹ 1,350 more rows
```
