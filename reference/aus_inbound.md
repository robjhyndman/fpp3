# Monthly short term (\<1 year) visitor arrivals to Australia

`aus_inbound` contains monthly data with one measured variable:

|        |                                             |
|--------|---------------------------------------------|
| Count: | Number of individuals arriving in Australia |

## Format

Time series of class \`tsibble\`

## Source

Tourism Research Australia

## Details

Each series is uniquely identified using two keys:

|          |                           |
|----------|---------------------------|
| County:  | Country of stay/residence |
| Purpose: | Purpose of travel         |

covering the period from Jan 2005–Feb 2020.

## Examples

``` r
aus_inbound
#> # A tsibble: 20,748 x 4 [1M]
#> # Key:       Country, Purpose [114]
#>       Month Country Purpose  Count
#>       <mth> <chr>   <chr>    <dbl>
#>  1 2005 Jan Canada  Business   924
#>  2 2005 Feb Canada  Business  1036
#>  3 2005 Mar Canada  Business  1301
#>  4 2005 Apr Canada  Business  1293
#>  5 2005 May Canada  Business  1115
#>  6 2005 Jun Canada  Business   813
#>  7 2005 Jul Canada  Business   881
#>  8 2005 Aug Canada  Business  1446
#>  9 2005 Sep Canada  Business  1236
#> 10 2005 Oct Canada  Business  1244
#> # ℹ 20,738 more rows
```
