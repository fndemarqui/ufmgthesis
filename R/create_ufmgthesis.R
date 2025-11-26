#' Create a new ufmgthesis Quarto project from the package template
#'
#' @aliases create_template
#' @export
#' @param path Path to create the project in (will be created if missing).
#' @param open If TRUE, opens the directory in RStudio (if available).
#' @param ... further arguments passed to other methods.

create_template <- function(path = "ufmgthesis", open = TRUE, ...) {

  if(!dir.exists(path)){
    dir.create(path)
  }

  usethis::create_from_github(
    repo_spec = "https://github.com/fndemarqui/ufmgthesis_template",
    destdir = path,
    open = rlang::is_interactive(),
    fork = FALSE
  )
}
