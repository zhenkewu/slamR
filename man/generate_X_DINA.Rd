% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate.R
\name{generate_X_DINA}
\alias{generate_X_DINA}
\title{simulate data according to DINA}
\usage{
generate_X_DINA(N, p, Q, c, g)
}
\arguments{
\item{N}{sample size}

\item{p}{2^K by 1 vector of prevalence probabilities}

\item{Q}{M by K item-attribute relationship}

\item{c}{M by 1 one minus slipping parameters}

\item{g}{M by 1 guessing parameters}
}
\value{
\itemize{
\item X N by M matrix of responses
\item A N by K matrix of attributes for N individuals
}
}
\description{
may be redundant; this can be done by \link{generate_X_fromA}
}
\examples{
N <- 1000
#p <- c(1,rep(0,7))
p <- c(rep(0,7),1)
#p <- c(0.1,0.1,0.1,0.1,0.1,0.2,0.3,0)
Q <- matrix(c(0,0,0, 0,0,1, 0,1,0,
              0,1,1, 1,0,0, 1,0,1,
              1,1,0, 1,1,1),ncol=3,byrow=TRUE)

M <- nrow(Q)
c <- rep(0.8,M)
g <- rep(0.2,M)

generate_X_DINA(N,p,Q,c,g)
}
