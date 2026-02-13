# US monthly employment data

`us_employment` contains monthly US employment data from January 1939 to
June 2019. Each \`Series_ID\` represents different sectors of the
economy.

## Format

Time series of class \`tsibble\`

## Source

U.S. Bureau of Labor Statistics

## Examples

``` r
us_employment
#> # A tsibble: 143,412 x 4 [1M]
#> # Key:       Series_ID [148]
#>       Month Series_ID     Title         Employed
#>       <mth> <chr>         <chr>            <dbl>
#>  1 1939 Jan CEU0500000001 Total Private    25338
#>  2 1939 Feb CEU0500000001 Total Private    25447
#>  3 1939 Mar CEU0500000001 Total Private    25833
#>  4 1939 Apr CEU0500000001 Total Private    25801
#>  5 1939 May CEU0500000001 Total Private    26113
#>  6 1939 Jun CEU0500000001 Total Private    26485
#>  7 1939 Jul CEU0500000001 Total Private    26481
#>  8 1939 Aug CEU0500000001 Total Private    26848
#>  9 1939 Sep CEU0500000001 Total Private    27468
#> 10 1939 Oct CEU0500000001 Total Private    27830
#> # ℹ 143,402 more rows
```
