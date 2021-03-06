#' Create a muted text
#'
#' Apply the class muted to a text
#' 
#' @param ... Any text.
#'
#' @examples
#' if (interactive()) {
#' }
#'
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonMuted <- function(...) {
  htmltools::tags$small(class = "text-muted", ...)
}



#' Create a custim h1 tag
#'
#' A custom h1 tag
#' 
#' @param ... Any text.
#' @param display value between 1 and 4.
#'
#' @examples
#' if (interactive()) {
#' }
#'
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonH1 <- function(..., display) {
  htmltools::tags$h1(class = paste0("display-", display), ...)
}



#' Create a custim p tag
#'
#' A custom p tag
#' 
#' @param ... Any text.
#'
#' @examples
#' if (interactive()) {
#' }
#'
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonLead <- function(...) {
  htmltools::tags$p(class = "lead", ...)
}




#' Create a quotation tag
#'
#' A custom quotation tool
#' 
#' @param ... Any text.
#' @param footer Footer content, if any.
#' @param source Source if any.
#' @param align Text alignement. "center", "right" or "left".
#' 
#' @examples
#' if (interactive()) {
#' }
#'
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonQuote <- function(..., footer = NULL, source = NULL, align = "center") {
  
  quoteCl <- "blockquote"
  if (!is.null(align)) quoteCl <- paste0(quoteCl, " text-", align)
  
  htmltools::tags$blockquote(
    class = quoteCl,
    htmltools::p(class = "mb-0", ...),
    if (!is.null(footer)) {
      htmltools::tags$footer(
        class = "blockquote-footer",
        footer,
        htmltools::tags$cite(title = "Source Title", source)
      )
    }
  )
}




#' Add a custom color to a text
#'
#' A custom color fo your text
#' 
#' @param tag Any tag containing text.
#' @param color Text color.
#' 
#' @examples
#' if (interactive()) {
#'  library(argonR)
#'  library(htmltools)
#'  argonTextColor(
#'   tag = h1("test"),
#'   color = "success"
#'  )
#' }
#'
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonTextColor <- function(tag, color) {
  tag$attribs$class <- paste0("text-", color)
  return(tag)
}




#' Change tag margins 
#'
#'
#' @param tag Tag to be treated.
#' @param orientation Margin side. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.
#' @param value Margin value, negative or positive. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.
#' 
#' @examples 
#' if (interactive()) {
#'  library(argonR)
#'  argonMargin(tag = h1("test"), orientation = "t", value = -1)
#'  argonMargin(tag = h1("test"), orientation = "x", value = 7)
#' }
#' 
#' @note Disabled on small screens (not a bug)
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonMargin <- function(tag, orientation, value) {
  tag$attribs$class <- paste0("m", orientation, "-", value)
  return(tag)
}



#' Change tag padding 
#'
#'
#' @param tag Tag to be treated.
#' @param orientation Padding side. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.
#' @param value Padding value. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.
#' 
#' @examples 
#' if (interactive()) {
#'  library(argonR)
#'  argonPadding(tag = h1("test"), orientation = NULL, value = 5)
#'  argonPadding(tag = h1("test"), orientation = "x", value = 2)
#' }
#' 
#' @note Disabled on small screens (not a bug)
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
argonPadding <- function(tag, orientation, value) {
  paddingCl <- paste0("p", orientation, "-", value)
  htmltools::tags$div(class = paddingCl, tag)
}