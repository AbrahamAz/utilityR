% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc.R
\name{factorize}
\alias{factorize}
\title{Factorize a variable}
\usage{
factorize(
  x,
  min_freq = 0.01,
  min_n = 1,
  NA_level = "(NA)",
  blank_level = "(blank)",
  infrequent_level = "Other",
  infrequent_can_include_blank_and_NA = F,
  order = T,
  reverse_order = F
)
}
\arguments{
\item{x}{- vector to be transformed}

\item{min_freq}{- all levels less than this percentage of records will be bucketed}

\item{min_n}{- all levels less than this number of records will be bucketed}

\item{NA_level}{- name of the level created for NA values}

\item{blank_level}{- name of the level created for "" values}

\item{infrequent_level}{- name of the level created for bucketing rare values}

\item{infrequent_can_include_blank_and_NA}{- If TRUE, infrequent_level will be extended to include NA and black observations}

\item{order}{# default to ordered}

\item{reverse_order}{# default to increasing order}
}
\value{
An ordered factor variable
}
\description{
Factorize a variable
}
\examples{
a <- letters[1:10]
factorize(a)
}
