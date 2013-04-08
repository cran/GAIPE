\name{PA.RMSEA}
\alias{PA.RMSEA}
\title{
Sample size planning by power analysis on RMSEA
}
\description{
Performs sample size planning by power analysis on RMSEA.
}
\usage{
PA.RMSEA(df, method = c("exact.fit", "close.fit", "not.close.fit"),
H0rmsea, HArmsea, power = 0.8, alpha = 0.05)
}
\arguments{
  \item{df}{
model degrees of freedom.
}
  \item{method}{
a character string specifying the hypothesis test for power analysis, must be one of \code{"exact.fit"}, \code{"close.fit"}, or \code{"not.close.fit"}(default).
}
  \item{H0rmsea}{
RMSEA for the null hypothesis.
}
  \item{HArmsea}{
RMSEA for the alternative hypothesis.
}
  \item{power}{
desired power value.
}
  \item{alpha}{
Type I error rate.
}
}
\value{
Return the necessary sample size that achieves the desired power. 
}
\references{
MacCallum, R. C., Browne, M. W., & Sugawara, H. M. (1996). Power analysis and determination of sample size for covariance structure modeling. \emph{Psychological Methods, 1}, 130-149.
}
\author{
Tzu-Yao Lin
}
\examples{
PA.RMSEA(df=30,method="not.close.fit",H0rmsea=.05,HArmsea=0.01)
}