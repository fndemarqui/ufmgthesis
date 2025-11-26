
<!-- README.md is generated from README.Rmd. Please edit that file -->

# UFMG’s Quarto Template for Writing Monographs, Dissertations and Thesis

<!-- badges: start -->

[![R-CMD-check](https://github.com/fndemarqui/ufmgthesis/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/fndemarqui/ufmgthesis/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

You can install the development version of the R package ufmgthesis as
follows:

``` r
# install.packages("pak")
pak::pkg_install("fndemarqui/ufmgthesis")
```

## Using the Template

Before using the template for the first time, make sure the following
packages are installed:

``` r
pkgs <- c("broom", "ggplot2", "kableExtra", "rmarkdown", "tinytex")
pak::pkg_install(pkgs)
```

<!-- Install [tinytex](https://yihui.org/tinytex/) from R in your Operating System: -->

<!-- ```{r} -->

<!-- #| eval: false -->

<!-- tinytex::install_tinytex() -->

<!-- ``` -->
