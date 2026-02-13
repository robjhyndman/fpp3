# Percentage changes in economic variables in the USA.

`us_change` contains percentage changes in quarterly personal
consumption expenditure, personal disposable income, production, savings
and the unemployment rate for the US, 1970 to 2016. Original \$ values
were in chained 2012 US dollars.

## Format

Time series of class \`tsibble\`

## Source

Federal Reserve Bank of St Louis.

## Examples

``` r
us_change
#> # A tsibble: 198 x 6 [1Q]
#>    Quarter Consumption Income Production Savings Unemployment
#>      <qtr>       <dbl>  <dbl>      <dbl>   <dbl>        <dbl>
#>  1 1970 Q1       0.619  1.04      -2.45    5.30        0.9   
#>  2 1970 Q2       0.452  1.23      -0.551   7.79        0.5   
#>  3 1970 Q3       0.873  1.59      -0.359   7.40        0.5   
#>  4 1970 Q4      -0.272 -0.240     -2.19    1.17        0.700 
#>  5 1971 Q1       1.90   1.98       1.91    3.54       -0.1000
#>  6 1971 Q2       0.915  1.45       0.902   5.87       -0.1000
#>  7 1971 Q3       0.794  0.521      0.308  -0.406       0.1000
#>  8 1971 Q4       1.65   1.16       2.29   -1.49        0     
#>  9 1972 Q1       1.31   0.457      4.15   -4.29       -0.200 
#> 10 1972 Q2       1.89   1.03       1.89   -4.69       -0.1000
#> # ℹ 188 more rows
```
