% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save.R
\name{save.follow.up.requests}
\alias{save.follow.up.requests}
\title{Save follow up requests}
\usage{
save.follow.up.requests(checks.df, directory, wb_name)
}
\arguments{
\item{checks.df}{The checks file for the follow-up requests}

\item{directory}{The directory for your follow-up request}

\item{wb_name}{The name of your workbook}
}
\value{
Write a follow-up requests file
}
\description{
Alias for create.follow.up.requests
}
\examples{
\dontrun{
save.follow.up.requests(checks.df = data, wb_name = 'other_requests', directory = 'output/checking/requests/')
}
}
