% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/typography.R
\name{argonMargin}
\alias{argonMargin}
\title{Change tag margins}
\usage{
argonMargin(tag, orientation, value)
}
\arguments{
\item{tag}{Tag to be treated.}

\item{orientation}{Margin side. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.}

\item{value}{Margin value, negative or positive. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.}
}
\description{
Change tag margins
}
\note{
Disabled on small screens (not a bug)
}
\examples{
if (interactive()) {
 library(argonR)
 argonMargin(tag = h1("test"), orientation = "t", value = -1)
 argonMargin(tag = h1("test"), orientation = "x", value = 7)
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
