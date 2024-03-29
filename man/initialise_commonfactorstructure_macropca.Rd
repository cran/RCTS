% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/03_IFE_algorithm_functions.R
\name{initialise_commonfactorstructure_macropca}
\alias{initialise_commonfactorstructure_macropca}
\title{Initialises the estimation of the common factors and their loadings.}
\usage{
initialise_commonfactorstructure_macropca(
  Y,
  X,
  beta_est,
  g,
  factor_group,
  k,
  kg,
  robust,
  method_estimate_beta = "individual",
  method_estimate_factors = "macro",
  verbose = FALSE
)
}
\arguments{
\item{Y}{Y: NxT dataframe with the panel data of interest}

\item{X}{dataframe with the observed variables}

\item{beta_est}{estimated values of beta}

\item{g}{Vector with estimated group membership for all individuals}

\item{factor_group}{estimated group specific factors}

\item{k}{number of estimated common factors}

\item{kg}{vector with the number of estimated group specific factors}

\item{robust}{TRUE or FALSE: defines using the classical or robust algorithm to estimate beta}

\item{method_estimate_beta}{defines how beta is estimated. Default case is an estimated beta for each individual. Default value is "individual." Possible values are "homogeneous", "group" or "individual".}

\item{method_estimate_factors}{specifies the robust algorithm to estimate factors: default is "macro". The value is not used when robust is set to FALSE.}

\item{verbose}{when TRUE, it prints messages}
}
\value{
list: 1st element contains the common factor(s) and the second element contains the factor loadings
}
\description{
This is a short version of initialise_commonfactorstructure() which only contains implementations for the robust macropca case and the classical case.
}
\examples{
set.seed(1)
original_data <- create_data_dgp2(30, 20)
Y <- original_data[[1]]
X <- original_data[[2]]
g <- original_data[[3]]
beta_est <- matrix(rnorm(4 * ncol(Y)), nrow = 4)
initialise_commonfactorstructure_macropca(Y, X, beta_est, g, NA, 0, c(3, 3, 3), TRUE)
}
