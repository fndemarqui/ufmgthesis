# Render the thesis with Quarto

This calls quarto::quarto_render() on the main document (index.qmd).

## Usage

``` r
render_thesis(project = ".", output_dir = NULL)
```

## Arguments

- project:

  Path to the project directory (defaults to current working dir).

- output_dir:

  Optional output directory; if NULL, uses the project's default.
