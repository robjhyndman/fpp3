# OTexts page views

Daily page views on the OTexts website <https://OTexts.com/> as recorded
by Google analytics.

## Format

Time series of class \`tsibble\`

## Details

`otexts_views` contains daily data with two columns:

|              |                                            |
|--------------|--------------------------------------------|
| `Date`:      | Date for which the page views are recorded |
| `Pageviews`: | Page views on the OTexts website           |

## Examples

``` r
otexts_views
#> # A tsibble: 1,561 x 2 [1D]
#>    Date       Pageviews
#>    <date>         <dbl>
#>  1 2018-01-01      2130
#>  2 2018-01-02      4070
#>  3 2018-01-03      6272
#>  4 2018-01-04      5963
#>  5 2018-01-05      6340
#>  6 2018-01-06      4132
#>  7 2018-01-07      3697
#>  8 2018-01-08      5918
#>  9 2018-01-09      7382
#> 10 2018-01-10      7811
#> # ℹ 1,551 more rows
```
