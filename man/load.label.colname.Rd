% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load.R
\name{load.label.colname}
\alias{load.label.colname}
\title{Load the label column name from the tool survey}
\usage{
load.label.colname(filename_tool, language = "English")
}
\arguments{
\item{filename_tool}{a link to the tool filename}

\item{language}{define the language of the label to be used}
}
\value{
the name of the label column
}
\description{
Load the label column name from the tool survey
}
\examples{
\dontrun{
label_colname <- load.label.colname(filename_tool, language = "English")
}
}
