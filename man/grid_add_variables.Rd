% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/03_IFE_algorithm_functions.R
\name{grid_add_variables}
\alias{grid_add_variables}
\title{Function which is used to have a dataframe (called "grid") with data (individualindex, timeindex, XT and LF) available.}
\usage{
grid_add_variables(
  grid,
  Y,
  X,
  beta_est,
  g,
  lambda,
  comfactor,
  method_estimate_beta,
  vars_est,
  S,
  limit_est_groups_heterogroups = 15
)
}
\arguments{
\item{grid}{dataframe containing values for X*beta_est and LF (product of common factor and its loadings)}

\item{Y}{Y: NxT dataframe with the panel data of interest}

\item{X}{X: NxTxp array containing the observable variables}

\item{beta_est}{estimated values of beta}

\item{g}{Vector with estimated group membership for all individuals}

\item{lambda}{loadings of the estimated common factors}

\item{comfactor}{estimated common factors}

\item{method_estimate_beta}{defines how beta is estimated. Default case is an estimated beta for each individual. Default value is "individual." Possible values are "homogeneous", "group" or "individual".}

\item{vars_est}{number of variables that will be included in the algorithm and have their coefficient estimated. This is usually equal to the number of observable variables.}

\item{S}{number of estimated groups}

\item{limit_est_groups_heterogroups}{maximum amount of groups that can be estimated when method_estimate_beta is set to "group"}
}
\value{
data.frame
}
\description{
It is used in iterate().
}
