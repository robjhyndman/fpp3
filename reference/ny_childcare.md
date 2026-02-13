# New York childcare data

The number of employees (in thousands) in child day care services in New
York City over the period the period from January 1990 to April 2024.

## Format

Time series of class \`tsibble\`

## Source

U.S. Bureau of Labor Statistics and Federal Reserve Bank of St. Louis,
All Employees: Education and Health Services: Child Care Services in New
York City, NY retrieved from FRED, Federal Reserve Bank of St. Louis;
<https://fred.stlouisfed.org/series/SMU36935616562440001>, 30 May 2024.

## Details

`ny_childcare` contains monthly data with two columns:

|          |                      |
|----------|----------------------|
| `Month`: | Year-month           |
| `Count`: | Number of employees. |

## Examples

``` r
ny_childcare
#> # A tsibble: 412 x 2 [1M]
#>       Month Count
#>       <mth> <dbl>
#>  1 1990 Jan  14.1
#>  2 1990 Feb  14.1
#>  3 1990 Mar  14.2
#>  4 1990 Apr  14  
#>  5 1990 May  14  
#>  6 1990 Jun  14  
#>  7 1990 Jul  13.3
#>  8 1990 Aug  13.2
#>  9 1990 Sep  13.9
#> 10 1990 Oct  14.1
#> # ℹ 402 more rows
```
