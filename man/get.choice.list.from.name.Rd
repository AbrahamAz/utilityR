% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.R
\name{get.choice.list.from.name}
\alias{get.choice.list.from.name}
\title{Find the choices list name using name}
\usage{
get.choice.list.from.name(variable, label_colname = NULL, tool.survey = NULL)
}
\arguments{
\item{variable}{This is the name of the header from raw data.}

\item{label_colname}{This is the label_colname input}

\item{tool.survey}{This is the tool.survey data.frame}
}
\value{
It will return the list_name value of the chosen variable
}
\description{
Find the choices list name using name
}
\examples{
\dontrun{
list_name_from_name <- get.choice.list.from.name(variable = "a2_partner",
                                                 label_colname = label_colname
                                                 tool.survey = tool.survey)
}
}
