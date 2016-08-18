% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normtest.R
\name{tadaa_normtest}
\alias{tadaa_normtest}
\title{Tadaa, test for normality!}
\usage{
tadaa_normtest(data, method = "as", print = "df")
}
\arguments{
\item{data}{A \code{data.frame}.}

\item{method}{The type of test to perform. Either \code{ad} for Anderson Darling,
\code{shapiro} for Shapiro-Wilk or \code{pearson} for Pearson's chi-square test.}

\item{print}{Print method, per default a regular \code{data.frame}.
Otherwise passed to \link[pixiedust]{sprinkle_print_method} for fancyness.}
}
\value{
A \code{data.frame} by default, otherwise \code{dust} object, depending on \code{print}.
}
\description{
Tadaa, test for normality!
}
\examples{
\dontrun{
library(dplyr)
ngo \%>\%
select(englisch, deutsch, mathe) \%>\%
tadaa_normtest(method = "shapiro")

ngo \%>\%
select(englisch, deutsch, mathe) \%>\%
tadaa_normtest(method = "pearson", print = "console")
}

}
\seealso{
Other Tadaa.functions: \code{\link{tadaa_aov}},
  \code{\link{tadaa_heatmap}}, \code{\link{tadaa_int}},
  \code{\link{tadaa_nom}}, \code{\link{tadaa_ord}},
  \code{\link{tadaa_t.test}}
}
