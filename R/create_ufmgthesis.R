#' Create a new ufmgthesis Quarto project from the package template
#'
#' @param path Path to create the project in (will be created if missing).
#' @param open If TRUE, opens the directory in RStudio (if available).
#' @export
create_ufmgthesis <- function(path = "ufmgthesis", open = TRUE) {
  stopifnot(is.character(path), length(path) == 1L)
  pkg_template_dir <- system.file("templates", "ufmgthesis", package = "ufmgthesis")
  if (pkg_template_dir == "") {
    stop("Can't find template files in the installed package. Did you install ufmgthesis?")
  }
  if (fs::dir_exists(path)) {
    cli::cli_alert_info("Target path {.path {path}} already exists. Files will be merged / may be overwritten.")
  } else {
    fs::dir_create(path)
  }
  fs::dir_copy(pkg_template_dir, path, overwrite = TRUE)
  cli::cli_alert_success("Created ufmgthesis project at {.path {path}}")
  if (isTRUE(open) && rstudioapi::isAvailable()) {
    rstudioapi::openProject(path, newSession = FALSE)
  }
  invisible(path)
}