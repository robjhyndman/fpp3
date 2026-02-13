# Australian vehicle sales

The number of new motor vehicles sold in Australia.

## Format

Time series of class \`tsibble\`

## Source

Australian Bureau of Statistics.
<https://www.abs.gov.au/statistics/industry/tourism-and-transport/sales-new-motor-vehicles/dec-2017>.
Cat No. 931401.

## Details

`aus_vehicle_sales` contains monthly data with one measured variable:

|          |                             |
|----------|-----------------------------|
| `Count`: | The number of vehicles sold |

from January 1994 to December 2017 in Australia, indexed by:

|          |             |
|----------|-------------|
| `Month`: | Year-month. |

Each series is uniquely identified using the key:

|                                                               |     |
|---------------------------------------------------------------|-----|
| `Type`: The type of the vehicle sold (Passenger, SUV, Other). |     |

## Examples

``` r
aus_vehicle_sales
#> # A tsibble: 864 x 3 [1M]
#> # Key:       Type [3]
#>       Month Type  Count
#>       <mth> <chr> <dbl>
#>  1 1994 Jan Other  5460
#>  2 1994 Feb Other  7422
#>  3 1994 Mar Other 10268
#>  4 1994 Apr Other  8022
#>  5 1994 May Other 10173
#>  6 1994 Jun Other 15830
#>  7 1994 Jul Other  7363
#>  8 1994 Aug Other  8404
#>  9 1994 Sep Other  8128
#> 10 1994 Oct Other  9166
#> # ℹ 854 more rows
```
