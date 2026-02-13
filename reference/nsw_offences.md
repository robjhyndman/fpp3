# Monthly offences in NSW

`nsw_offences` contains monthly data with one measured variable:

|        |                             |
|--------|-----------------------------|
| Count: | Number of offences reported |

## Format

Time series of class \`tsibble\`

## Source

NSW Bureau of Crime Statistics and Research.
<https://bocsar.nsw.gov.au/>

## Details

Each series is uniquely identified using one key:

|       |              |
|-------|--------------|
| Type: | Offence type |

covering the period from Apr 1995–Dec 2023.

## Examples

``` r
nsw_offences
#> # A tsibble: 7,308 x 3 [1M]
#> # Key:       Type [21]
#>       Month Type                     Count
#>       <mth> <chr>                    <dbl>
#>  1 1995 Jan Abduction and kidnapping    15
#>  2 1995 Feb Abduction and kidnapping    16
#>  3 1995 Mar Abduction and kidnapping    23
#>  4 1995 Apr Abduction and kidnapping    22
#>  5 1995 May Abduction and kidnapping    14
#>  6 1995 Jun Abduction and kidnapping    13
#>  7 1995 Jul Abduction and kidnapping    19
#>  8 1995 Aug Abduction and kidnapping    23
#>  9 1995 Sep Abduction and kidnapping    13
#> 10 1995 Oct Abduction and kidnapping    21
#> # ℹ 7,298 more rows
```
