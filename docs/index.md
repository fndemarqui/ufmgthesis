# UFMG’s Quarto Template for Writing Monographs, Dissertations and Thesis

You can install the development version of ufmgthesis package like so:

``` r
# install.packages("pak")
pak::pkg_install("fndemarqui/ufmgthesis")
```

## Using the Template

Before using the template for the first time, make sure the following
packages are installed:

``` r
pkgs <- c("broom", "ggplot2", "kableExtra", "rmarkdown", "tinytex")
install.packages(pkgs)
```

Install [tinytex](https://yihui.org/tinytex/) from R in your Operating
System:

``` r
tinytex::install_tinytex()
```
