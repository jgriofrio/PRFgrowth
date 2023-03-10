% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Hgrowth.R
\name{Hmodel}
\alias{Hmodel}
\title{Height growth estimation}
\usage{
Hmodel(H0, ForT, Dt)
}
\arguments{
\item{H0}{height at time 0}

\item{ForT}{Forest type identification codes.}

\item{Dt}{period length (years)}
}
\value{
Height value at time 1 (H1) in meters
}
\description{
Estimate the height at time 1 based on initial height and period length. See manuscript describing the modeling approach
}
\examples{
Hmodel(H0=10, ForT='PJ',Dt=7)
}
