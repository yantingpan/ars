% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ars.R
\name{ars}
\alias{ars}
\title{Adapative Rejection Sampling}
\usage{
ars(N, fn, l = -Inf, u = Inf, center = 0, step = 0.5)
}
\arguments{
\item{N}{- numeric: sample size (number of observations).}

\item{fn}{- function: log-concave function that is proporitional to the sampling density.}

\item{l}{- numeric: the lower bound of the density function. The default is -Inf.}

\item{u}{- numeric: the upper bound of the density function. The default is Inf.}

\item{center}{- numeric: estimated center of function. The default is 0.}

\item{step}{- numeric: value of bandwidth around center used to find the starting abscissaes. The default is 0.5.}
}
\value{
\code{ars} returns a vector of sampled values.
}
\description{
`ars` generates random sample from log-concave densify function interested by users using adapative rejection sampling.
}
\details{
This function takes a numeric argument n and a function argument f
to generate random numbers from the given distribution in the specified sample size,
based on adapative rejection sampling method. For more detials, see Gilks and Wild (1992).
}
\examples{
##  Sample from Standard Normal Distribution
ars(N = 10000, fn = dnorm, l = -Inf, u = Inf, center = 0, step = 0.5)

## Sample from Gamma Distribution
gamma_test <- function(x){
k <- dgamma(x, shape = 7.5, scale = 1)
return(k)
}
ars(N = 10000, fn = gamma_test, l = 0.1, u = 20)

}
\references{
W. R. Gilks, P. Wild. (1992), "Adaptive Rejection Sampling for Gibbs Sampling," Applied Statistics 41:337–348.
}
\author{
Vincent Myers, Yanting Pan, and Zhenni Ye, based on Gilks and Wild (1992).
}
