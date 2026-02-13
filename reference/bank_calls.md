# Call volume for a large North American commercial bank

Five-minute call volume handled on weekdays between 7:00am and 9:05pm,
beginning 3 March and 24 October 2003 (164 days).

## Format

Time series of class \`tsibble\` at 5 minute intervals.

## Source

Jonathan Weinberg

## References

Weinberg, Brown & Stroud (2007) "Bayesian forecasting of an
inhomogeneous Poisson process with applications to call center data"
*Journal of the American Statistical Associiation*, 102:480, 1185-1198.

## Examples

``` r
bank_calls
#> # A tsibble: 27,716 x 2 [5m] <UTC>
#>    DateTime            Calls
#>    <dttm>              <dbl>
#>  1 2003-03-03 07:00:00   111
#>  2 2003-03-03 07:05:00   113
#>  3 2003-03-03 07:10:00    76
#>  4 2003-03-03 07:15:00    82
#>  5 2003-03-03 07:20:00    91
#>  6 2003-03-03 07:25:00    87
#>  7 2003-03-03 07:30:00    75
#>  8 2003-03-03 07:35:00    89
#>  9 2003-03-03 07:40:00    99
#> 10 2003-03-03 07:45:00   125
#> # ℹ 27,706 more rows
```
