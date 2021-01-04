# aider

<!-- badges: start -->
<!-- badges: end -->

The goal of aider is to reduce the need to define common, repetitive parameters within your code. 


## Installation

You can install the released version of aider from github

``` r
devtools::install_github('miorourke/aider')
```

## List of functions

#### Tweaks to existing R functions to exclude NA values

* iqr_()
* max_()
* mean_()
* median_()
* min_()
* quantile_()
* sum_()

#### Data analysis functions

* na_count()
* write_table()

#### Extract data from existing database using an ODBC connector

These function uses the RODBC package. It streamlines the data extraction to a SQL query.

* extract_rodbc()

#### Workspace management

I like to separate my project code and data. These functions make it easier to save and load without the need to rewrite long file paths

* make_data_dir()
* save_object()
* load_object()


## Examples


``` r
library(aider)
## Find mean of vector
sum_(c(9, 12, 376, 483, NA))

```

