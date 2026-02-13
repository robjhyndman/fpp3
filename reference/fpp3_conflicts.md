# Conflicts between fpp3 packages and other packages

This function lists all the conflicts between packages in the fpp3
collection and other packages that you have loaded.

## Usage

``` r
fpp3_conflicts()
```

## Value

A list object of class `fpp3_conflicts`.

## Details

Some conflicts are deliberately ignored: `intersect`, `union`,
`setequal`, and `setdiff` from dplyr; and `intersect`, `union`,
`setdiff`, and `as.difftime` from lubridate. These functions make the
base equivalents generic, so shouldn't negatively affect any existing
code.

## Examples

``` r
fpp3_conflicts()
#> ── Conflicts ───────────────────────────────────────────────── fpp3_conflicts ──
#> ✖ lubridate::date()    masks base::date()
#> ✖ dplyr::filter()      masks stats::filter()
#> ✖ tsibble::intersect() masks base::intersect()
#> ✖ tsibble::interval()  masks lubridate::interval()
#> ✖ dplyr::lag()         masks stats::lag()
#> ✖ tsibble::setdiff()   masks base::setdiff()
#> ✖ tsibble::union()     masks base::union()
```
