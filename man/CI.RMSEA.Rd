\name{CI.RMSEA}
\alias{CI.RMSEA}
\title{Computing the confidence interval for RMSEA}
\description{Computes the confidence interval for RMSEA.}
\usage{
CI.RMSEA(rmsea,df,N,clevel=.95)
}
\arguments{
  \item{rmsea}{expected or observed RMSEA.}
  \item{df}{model degrees of freedom.}
  \item{N}{sample size.}
  \item{clevel}{confidence level (e.g., .90, .95, etc.).}
}
\value{
Return the upper and lower bound as well as the expected or observed value of the RMSEA.
}
\references{
Browne, M. W., & Cudeck, R. (1992). Alternative ways of assessing model fit. Sociological Methods and Research, 21(2), 230-258. doi: 10.1177/0049124192021002005}
\author{Tzu-Yao Lin}
\examples{
CI.RMSEA(rmsea=.05,df=30,N=200,clevel=.95)
}