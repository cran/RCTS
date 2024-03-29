% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/03_IFE_algorithm_functions.R
\name{calculate_Z_common}
\alias{calculate_Z_common}
\title{Calculates Z = Y - X*beta_est - LgFg. It is used in the estimate of the common factorstructure.}
\usage{
calculate_Z_common(
  Y,
  X,
  beta_est,
  g,
  lgfg_list,
  vars_est,
  kg,
  method_estimate_beta,
  method_estimate_factors,
  initialise = FALSE
)
}
\arguments{
\item{Y}{Y: NxT dataframe with the panel data of interest}

\item{X}{X: NxTxp array containing the observable variables}

\item{beta_est}{estimated values of beta}

\item{g}{Vector with group membership for all individuals}

\item{lgfg_list}{This is a list (length number of groups) containing FgLg for every group.}

\item{vars_est}{number of variables that will be included in the algorithm and have their coefficient estimated. This is usually equal to the number of observable variables.}

\item{kg}{number of group specific factors to be estimated}

\item{method_estimate_beta}{defines how beta is estimated. Default case is an estimated beta for each individual. Default value is "individual." Possible values are "homogeneous", "group" or "individual".}

\item{method_estimate_factors}{defines method of robust estimaton of the factors: "macro", "pertmm" or "cz"}

\item{initialise}{indicator of being in the initialisation phase}
}
\value{
NxT matrix
}
\description{
Calculates Z = Y - X*beta_est - LgFg. It is used in the estimate of the common factorstructure.
}
