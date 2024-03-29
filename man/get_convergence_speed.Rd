% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/03_IFE_algorithm_functions.R
\name{get_convergence_speed}
\alias{get_convergence_speed}
\title{Defines the convergence speed.}
\usage{
get_convergence_speed(iteration, of)
}
\arguments{
\item{iteration}{number of iteration}

\item{of}{objective function}
}
\value{
numeric if iteration > 3, otherwise NA
}
\description{
Defines the convergence speed.
}
\examples{
get_convergence_speed(5, 10:1)
}
