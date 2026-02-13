# Australian mortality data

Weekly death counts and mortality rates in Australia.

## Format

Time series of class \`tsibble\`

## Source

<https://mortality.org/Data/STMF> (Downloaded on 29 May 2024)

## Details

`aus_mortality` contains weekly data with two measured variables:

|              |                |
|--------------|----------------|
| `Deaths`:    | Death count    |
| `Mortality`: | Mortality rate |

from 2015 week 01 to 2023 week 12 for five different age groups plus the
total, categorised by sex.

Each series is uniquely identified using three keys:

|        |                                              |
|--------|----------------------------------------------|
| `Sex`: | Sex of the individual: Male, Female, or Both |
| `Age`: | Age group of the individual                  |

The mortality rate is defined as the number of deaths per thousand
people in Australia in each week.

## Examples

``` r
aus_mortality
#> # A tsibble: 7,740 x 5 [1W]
#> # Key:       Sex, Age [18]
#>        Week Sex   Age   Deaths Mortality
#>      <week> <chr> <chr>  <dbl>     <dbl>
#>  1 2015 W01 Both  0-14    31.1  0.000360
#>  2 2015 W02 Both  0-14    29.0  0.000334
#>  3 2015 W03 Both  0-14    27.5  0.000318
#>  4 2015 W04 Both  0-14    27.8  0.000321
#>  5 2015 W05 Both  0-14    26.0  0.000300
#>  6 2015 W06 Both  0-14    28.5  0.000330
#>  7 2015 W07 Both  0-14    29.4  0.000339
#>  8 2015 W08 Both  0-14    31.2  0.000361
#>  9 2015 W09 Both  0-14    27.9  0.000322
#> 10 2015 W10 Both  0-14    29.0  0.000334
#> # ℹ 7,730 more rows
```
