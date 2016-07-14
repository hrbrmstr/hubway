
<!-- README.md is generated from README.Rmd. Please edit that file -->
`hubway` : Tools to Work with the 'Hubway' 'API'

The following functions are implemented:

-   `get_stations`: Retrieve the current status of all Hubway stations

The following data sets are included:

### Installation

``` r
devtools::install_github("brudis-r7/hubway")
```

### Usage

``` r
library(hubway)

# current verison
packageVersion("hubway")
#> [1] '0.0.0.9000'

get_stations()
#> # A tibble: 162 x 18
#>    station_id num_bikes_available num_bikes_disabled num_docks_available num_docks_disabled is_installed is_renting
#>         <chr>               <int>              <int>               <int>              <int>        <int>      <int>
#> 1           3                   5                  0                  10                  0            1          1
#> 2           4                   6                  0                   9                  0            1          1
#> 3           5                   2                  1                  11                  1            1          1
#> 4           6                   0                  2                  12                  1            1          1
#> 5           7                  14                  1                   0                  0            1          1
#> 6           8                  11                  0                   4                  0            1          1
#> 7           9                   6                  0                  13                  0            1          1
#> 8          10                   7                  1                   3                  0            1          1
#> 9          11                   8                  0                   7                  0            1          1
#> 10         12                   5                  1                   9                  0            1          1
#> # ... with 152 more rows, and 11 more variables: is_returning <int>, last_reported <chr>,
#> #   eightd_has_available_keys <lgl>, name <chr>, short_name <chr>, lat <dbl>, lon <dbl>, region_id <int>,
#> #   rental_methods <list>, capacity <int>, eightd_has_key_dispenser <lgl>
```

### Test Results

``` r
library(hubway)
library(testthat)

date()
#> [1] "Thu Jul 14 15:18:31 2016"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
#> 
#> DONE ===================================================================================================================
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
