% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process.R
\name{process.uuid}
\alias{process.uuid}
\title{Process audit files}
\usage{
process.uuid(df)
}
\arguments{
\item{df}{Audit files loaded with `load.audit.files` function}
}
\value{
A dataframe describing time-related parameters of the interviews
`n.iteration` - The number of iterations per interviews
`tot.t` - Total time of the interview. Calculated as `start` of the last `form.exit` event minus
the `start` of `form.start` event
`tot.rt` - The total response time of the interview. The sum of the `duration` column in the loaded audits dataframe
`tot.rt.inter` - The total time between questions in the interview.
The sum of the `inter_q_duration` column in the loaded audits dataframe
`t` - Time of each iteration. Calculated as `start` of the iteration's `form.exit` event
minus the `start` of the iterations`form.start` event
`rt` - Response time of each iteration. The sum of the `duration` column in the loaded audits dataframe for the iteration
`q` - Number of questions per iteration
`j` - Number of jump events per iteration
`e` - Number of edits per iteration Calculated as the number of non NA entries in the `old.value` column
`w` - Waiting time - the `start` column of iteration's `form.resume`
event - the `start` for the column of the pervious iterations `form.exit` event
}
\description{
Process audit files
}
\note{
This function is non vectorized. Mostly used in pipes after a `group_by(uuid)` command
}
\examples{
\dontrun{
loaded.audits \%>\%
  dplyr::group_by(uuid) \%>\%
  dplyr::group_modify(~process.uuid(.x)) \%>\%
  dplyr::ungroup()
}
}
