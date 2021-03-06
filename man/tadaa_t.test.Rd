% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tadaa_two_sample.R
\name{tadaa_t.test}
\alias{tadaa_t.test}
\title{Tadaa, t-Test!}
\usage{
tadaa_t.test(data, response, group, direction = "two.sided",
  paired = FALSE, var.equal = NULL, conf.level = 0.95,
  print = c("df", "console", "html", "markdown"))
}
\arguments{
\item{data}{A \code{data.frame}.}

\item{response}{The response variable (dependent).}

\item{group}{The group variable, usually a \code{factor}.}

\item{direction}{Test direction, like \code{alternative} in \link{t.test}.}

\item{paired}{If \code{TRUE}, a paired test is performed, defaults to \code{FALSE}.}

\item{var.equal}{If set, passed to \link[stats:t.test]{stats::t.test} to decide whether to use a
Welch-correction. Default is \code{NULL} to automatically determine heteroskedasticity.}

\item{conf.level}{Confidence level used for power and CI, default is \code{0.95}.}

\item{print}{Print method, default \code{df}: A regular \code{data.frame}.
Otherwise passed to \link[pixiedust:sprinkle_print_method]{pixiedust::sprinkle_print_method} for fancyness.}
}
\value{
A \code{data.frame} by default, otherwise \code{dust} object,
depending on \code{print}.
}
\description{
An extension for \link[stats:t.test]{stats::t.test} with added boni and tidy and/or pretty output.
Before a t-test is performed, \link[car:leveneTest]{car::leveneTest} is consulted as to wether
heteroskedasticity is present (using the default \code{center = "mean"} method for
a more robust test), and sets \code{var.equal} accordingly.
Afterwards, the effect size is calculated and \link[pwr:pwr.t.test]{pwr::pwr.t.test} or
\link[pwr:pwr.t2n.test]{pwr::pwr.t2n.test} are used to calculate the test's power accordingly.
The result is either returned as a \link[broom:tidy]{broom::tidy} \code{data.frame} or prettified using
various \link[pixiedust:sprinkle]{pixiedust::sprinkle} shenanigans.
}
\note{
The cutoff for the interal Levene's test to decided whether or not to perform
a Welch-corrected t-test is set to \code{0.05} by default. To override the internal tests and
decide whether to use a Welch test, set \code{var.equal} as you would with \link[stats:t.test]{stats::t.test}.
}
\examples{
set.seed(42)
df <- data.frame(x = runif(100), y = sample(c("A", "B"), 100, TRUE))
tadaa_t.test(df, x, y)

df <- data.frame(x = runif(100), y = c(rep("A", 50), rep("B", 50)))
tadaa_t.test(df, x, y, paired = TRUE)

tadaa_t.test(ngo, deutsch, geschl, print = "console")
}
\seealso{
Other Tadaa-functions: \code{\link{tadaa_aov}},
  \code{\link{tadaa_chisq}}, \code{\link{tadaa_kruskal}},
  \code{\link{tadaa_levene}}, \code{\link{tadaa_nom}},
  \code{\link{tadaa_normtest}},
  \code{\link{tadaa_one_sample}}, \code{\link{tadaa_ord}},
  \code{\link{tadaa_pairwise_gh}},
  \code{\link{tadaa_pairwise_tukey}},
  \code{\link{tadaa_pairwise_t}},
  \code{\link{tadaa_wilcoxon}}
}
\concept{Tadaa-functions}
