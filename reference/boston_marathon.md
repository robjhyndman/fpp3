# Boston marathon winning times since 1897

Winning times for events at the Boston Marathon. 1897-2019.

## Format

Annual time series of class \`tsibble\`.

## Source

Boston Athletic Association.
<https://www.baa.org/races/boston-marathon/results/champions/>

## Examples

``` r
boston_marathon
#> # A tsibble: 265 x 5 [1Y]
#> # Key:       Event [5]
#>    Event                Year Champion            Country       Time      
#>    <fct>               <int> <chr>               <chr>         <hms>     
#>  1 Men's open division  1897 John J. McDermott   United States 10510 secs
#>  2 Men's open division  1898 Ronald J. MacDonald Canada         9720 secs
#>  3 Men's open division  1899 Lawrence Brignolia  United States 10478 secs
#>  4 Men's open division  1900 John P. Caffery     Canada         9584 secs
#>  5 Men's open division  1901 John P. Caffery     Canada         8963 secs
#>  6 Men's open division  1902 Sammy A. Mellor     United States  9792 secs
#>  7 Men's open division  1903 John C. Lorden      United States  9689 secs
#>  8 Men's open division  1904 Michael Spring      United States  9484 secs
#>  9 Men's open division  1905 Frederick Lorz      United States  9505 secs
#> 10 Men's open division  1906 Timothy Ford        United States  9945 secs
#> # ℹ 255 more rows
```
