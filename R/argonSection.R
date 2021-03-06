#' Create a Boostrap 4 section container
#'
#' Build an argon section container
#'
#' @param ... Any UI element.
#' @param size Section size. NULL by default.
#' @param status Section status.
#' @param gradient Section gradient effect. FALSE by default.
#' @param separator Section bottom separator. FALSE by default.
#' @param separator_color Separator color. "secondary" by default.
#' @param shape Whether to include shape in the background. FALSE by default.
#' 
#' @examples 
#' if (interactive()) {
#' }
#' 
#' @note Do not use with the argonDash package. Only for argonR.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonSection <- function(..., size = NULL, status = "default", gradient = FALSE, 
                         separator = FALSE, separator_color = "secondary", shape = FALSE) {
  
  sectionCl <- "section"
  if (!is.null(size)) sectionCl <- paste0(sectionCl, " section-", size)
  if (gradient) {
    if (!is.null(status)) sectionCl <- paste0(sectionCl, " bg-gradient-", status)
  } else {
    sectionCl <- sectionCl <- paste0(sectionCl, " bg-", status)
  }
  if (shape) sectionCl <- paste0(sectionCl, " section-shaped pb-250")
  
  htmltools::tags$section(
    class = sectionCl,
    if (shape) {
      htmltools::HTML(
        paste0(
          '<div class="shape shape-style-1 shape-default">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          </div>
          '
        )
      )
    }, 
    htmltools::tags$div(
      class = if (shape) "container py-lg-md d-flex" else "container",
      ...
    ),
    if (separator) {
      htmltools::tags$div(
        class = "separator separator-bottom separator-skew zindex-100",
        htmltools::HTML(
          paste0(
            '<svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-', separator_color, '" points="2560 0 2560 100 0 100"></polygon>
            </svg>
            '
          )
        )
      )
    }
  )
  
}