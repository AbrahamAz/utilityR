% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save.R
\name{save.trans.requests}
\alias{save.trans.requests}
\title{Save translation requests}
\usage{
save.trans.requests(
  df,
  wb_name,
  blue_cols = NULL,
  use_template = F,
  directory,
  template_dir = "resources/trans_requests_template.xlsx"
)
}
\arguments{
\item{df}{your other requests dataframe}

\item{wb_name}{The name you'd like your excel file to have}

\item{blue_cols}{If you'd like for any columns to be blue - specify which ones here}

\item{use_template}{Whether the function should use pre-established template. `False` by default}

\item{directory}{The directory that holds your other requests}

\item{template_dir}{directory where you've saved your pre-established template if using.
"resources/other_requests_template.xlsx" by default}
}
\value{
Exports a dataframe of translation requests into your requests folder
}
\description{
Save translation requests
}
\examples{
\dontrun{
save.trans.requests(df = data, wb_name = 'other_requests', directory = 'output/checking/requests/')
}
}
