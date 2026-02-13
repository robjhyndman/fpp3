# Price series for various commodities

Annual prices for eggs, chicken, copper, nails, oil and wheat. Eggs,
chicken, nails, oil and copper in \$US; wheat in British pounds. All
prices adjusted for inflation.

## Format

Annual time series of class \`tsibble\`.

## Source

Makridakis, Wheelwright and Hyndman (1998) \*Forecasting: methods and
applications\*, John Wiley & Sons: New York. Chapter 9.

## Examples

``` r
prices |> autoplot(wheat)
#> Warning: Removed 1 row containing missing values or values outside the scale range
#> (`geom_line()`).

```
