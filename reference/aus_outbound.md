# Monthly short term (\<1 year) resident departures in Australia

`aus_outbound` contains monthly data with one measured variable:

|        |                                           |
|--------|-------------------------------------------|
| Count: | Number of individuals departing Australia |

## Format

Time series of class \`tsibble\`

## Source

Tourism Research Australia

## Details

Each series is uniquely identified using two keys:

|          |                   |
|----------|-------------------|
| County:  | Destination       |
| Purpose: | Purpose of travel |

covering the period from Jan 2005–Jun 2017.

## Examples

``` r
aus_outbound
#> # A tsibble: 11,700 x 4 [1M]
#> # Key:       Country, Purpose [78]
#>       Month Country                               Purpose  Count
#>       <mth> <chr>                                 <chr>    <dbl>
#>  1 2005 Jan China (excl SARs and Taiwan province) Business  5748
#>  2 2005 Feb China (excl SARs and Taiwan province) Business  4483
#>  3 2005 Mar China (excl SARs and Taiwan province) Business  7052
#>  4 2005 Apr China (excl SARs and Taiwan province) Business  9836
#>  5 2005 May China (excl SARs and Taiwan province) Business  6050
#>  6 2005 Jun China (excl SARs and Taiwan province) Business  7112
#>  7 2005 Jul China (excl SARs and Taiwan province) Business  6556
#>  8 2005 Aug China (excl SARs and Taiwan province) Business  8347
#>  9 2005 Sep China (excl SARs and Taiwan province) Business  7974
#> 10 2005 Oct China (excl SARs and Taiwan province) Business  8680
#> # ℹ 11,690 more rows
```
