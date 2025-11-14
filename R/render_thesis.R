#' Render the thesis with Quarto
#'
#' This calls quarto::quarto_render() on the main document (index.qmd).
#'
#' @param project Path to the project directory (defaults to current working dir).
#' @param output_dir Optional output directory; if NULL, uses the project's default.
#' @export
render_thesis <- function(project = ".", output_dir = NULL) {
  if (!requireNamespace("quarto", quietly = TRUE)) {
    stop("The 'quarto' R package is required to render. Install it with install.packages('quarto') or install Quarto CLI and the R package.")
  }
  proj_file <- file.path(project, "index.qmd")
  if (!file.exists(proj_file)) {
    stop("index.qmd not found in project: ", project)
  }
  args <- list(input = proj_file)
  if (!is.null(output_dir)) args$output_dir <- output_dir
  # Use quarto::quarto_render to run Quarto
  quarto::quarto_render(input = proj_file, output_format = NULL, execute_params = NULL, render_args = list(), output_dir = output_dir)
  invisible(TRUE)
}