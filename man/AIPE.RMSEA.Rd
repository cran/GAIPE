\name{AIPE.RMSEA}
\alias{AIPE.RMSEA}
\title{Sample size planning by AIPE approach on RMSEA}
\description{Performs sample size planning by AIPE approach on RMSEA.}
\usage{
AIPE.RMSEA(rmsea, df, width, clevel = 0.95)
}
\arguments{
  \item{rmsea}{expected RMSEA.}
  \item{df}{model degrees of freedom.}
  \item{width}{desired confidence width.}
  \item{clevel}{confidence level (e.g., .90, .95, etc.).}
}
\value{
Return the necessary sample size that satisfies the desired width of a confidence interval. 
}
\references{
Kelley, K., & Lai, K. (2011). Accuracy in parameter estimation for the root mean square error of approximation: Sample size planning for narrow confidence intervals. \emph{Multivariate Behavioral Research, 46}, 1-32.
}
\author{Tzu-Yao Lin}
\examples{
AIPE.RMSEA(rmsea=.05,df=30,width=.02,clevel=.95)
}