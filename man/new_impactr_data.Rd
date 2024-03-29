% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/impactr_data.R
\name{new_impactr_data}
\alias{new_impactr_data}
\title{Constructor for impactr_data object}
\usage{
new_impactr_data(
  x,
  filename,
  start_date_time,
  samp_freq,
  acc_placement,
  subj_body_mass,
  filter_type
)
}
\arguments{
\item{x}{A data frame.}

\item{filename}{A character string containing the file name.}

\item{start_date_time}{A scalar of class \code{POSIXct}.}

\item{samp_freq}{A numerical scalar}

\item{acc_placement}{A character scalar}

\item{subj_body_mass}{A numerical scalar}

\item{filter_type}{A character scalar}
}
\value{
An object of the \code{impactr_data} class.
}
\description{
Constructor for impactr_data object
}
\keyword{internal}
