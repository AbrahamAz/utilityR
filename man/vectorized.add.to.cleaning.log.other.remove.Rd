% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleaning_log_related.R
\name{vectorized.add.to.cleaning.log.other.remove}
\alias{vectorized.add.to.cleaning.log.other.remove}
\title{Vectorized add.to.cleaning.log.other.remove}
\usage{
vectorized.add.to.cleaning.log.other.remove(
  data,
  other_requests,
  is.loop,
  issue = "Invalid other response",
  invalid = "invalid.v"
)
}
\arguments{
\item{data}{your dataframe}

\item{other_requests}{your other_requests - make sure that you're inputing the requests that are available in the `data`
If one of the variables in the `name` column of `other_requests` isn't present in the `data` object, it will be removed from the resuls}

\item{is.loop}{Whether your data is a loop}

\item{issue}{the reason that the entries were deemed invalid for the cleaning log entry, "Invalid other response" by default}

\item{invalid}{the name of your invalid column - 'invalid.v' by default}
}
\value{
a cleaning log file
}
\description{
Allows the user to iterate over their `other_requests` file and produce the cleaning log file
}
\examples{
\dontrun{
vectorized.add.to.cleaning.log.other.remove(data = data, other_requests = other.requests)
}
}
