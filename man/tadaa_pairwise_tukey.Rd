% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tadaa_pairwise_tukey.R
\name{tadaa_pairwise_tukey}
\alias{tadaa_pairwise_tukey}
\title{Tukey HSD pairwise comparisons}
\usage{
tadaa_pairwise_tukey(data, response, group1, group2 = NULL,
  print = "df", ...)
}
\arguments{
\item{data}{A \code{data.frame} containing the variables.}

\item{response}{The response variable, i.e. the dependent numeric vector.}

\item{group1}{The grouping variables, typically a \code{factor}.}

\item{group2}{(Optional) second grouping variable.}

\item{print}{Print method, defaults to \code{df} for \code{data.frame} output, otherwise
passed to \link[pixiedust:sprinkle_print_method]{pixiedust::sprinkle_print_method}.}

\item{...}{Further arguments passed to \link[stats:TukeyHSD]{stats::TukeyHSD}}
}
\value{
A \code{data.frame} or \link[pixiedust:dust]{pixiedust::dust} object depending on \code{print}.
}
\description{
This function is merely a thin wrapper around \link[stats:TukeyHSD]{stats::TukeyHSD} with tidying done
by \link[broom:tidy]{broom::tidy} and optional formatting via \link[pixiedust:sprinkle]{pixiedust::sprinkle}.
Its input is not a \code{aov} model like in the original function, but instead the
\code{aov} model is fit internally based on the arguments given. This is meant to
enable a consistent usage between the \code{tadaa_pairwise}-functions.
}
\examples{
tadaa_pairwise_tukey(data = ngo, deutsch, jahrgang, geschl)
tadaa_pairwise_tukey(data = ngo, deutsch, jahrgang, print = "console")
}
\seealso{
\code{\link[=tadaa_pairwise_t]{tadaa_pairwise_t()}}, \code{\link[=tadaa_pairwise_gh]{tadaa_pairwise_gh()}}

Other Tadaa-functions: \code{\link{tadaa_aov}},
  \code{\link{tadaa_chisq}}, \code{\link{tadaa_kruskal}},
  \code{\link{tadaa_levene}}, \code{\link{tadaa_nom}},
  \code{\link{tadaa_normtest}},
  \code{\link{tadaa_one_sample}}, \code{\link{tadaa_ord}},
  \code{\link{tadaa_pairwise_gh}},
  \code{\link{tadaa_pairwise_t}},
  \code{\link{tadaa_t.test}}, \code{\link{tadaa_wilcoxon}}
}
\concept{Tadaa-functions}
