\name{Preprocess}
\alias{Preprocess}
\title{Preprocess data for use with SpecsVerification.}
\description{
Preprocess ensemble and observation data for use with verification routines.
}
\usage{
Preprocess(ens=NA, ens.ref=NA, obs=NA)
}
\arguments{
  \item{ens}{A data.frame, vector, or matrix; or NA (default).}
  \item{ens.ref}{A data.frame, vector, or matrix; or NA (default).}
  \item{obs}{A data.frame, vector, or matrix; or NA (default).}
}
\value{
  The function returns a list with elements ens, ens.ref and obs.
}
\details{
  Here is roughly what the function does, in that order:

  \item{check which of the three arguments were provided by comparing them to NA}
  \item{check if ens and ens.ref and obs are of class `data.frame`, `numeric`, or `matrix`; otherwise stop}
  \item{vector-valued ensembles are interpreted as one K-member ensemble, rather than K 1-member ensembles}
  \item{ens and ens.ref are coerced to class `matrix` by `as.matrix`, obs to class `numeric` i.e. vector}
  \item{check whether all provided objects have the same length in the time dimension; otherwise stop}
  \item{ensemble members (i.e. columns) which have all entries NA are removed}
}
\examples{
  # Example:
  ens <- matrix(1, nrow=2, ncol=3)
  ens.ref <- data.frame(c(1,2), c(3,NA), c(NA,NA))
  obs <- c(5,NA)
  Preprocess(ens=ens, ens.ref=ens.ref, obs=obs)
}



