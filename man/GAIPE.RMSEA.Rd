\name{GAIPE.RMSEA}
\alias{GAIPE.RMSEA}
\title{Sample size planning by GAIPE framework on RMSEA}
\description{Draws the graph for sample size planning by GAIPE framework on RMSEA.}
\usage{
GAIPE.RMSEA(rmsea, df, width = NULL, clevel = 0.95, N = c(100, 1800, 15), 
PA_method = c("exact.fit", "close.fit", "not.close.fit"), 
H0rmsea = NULL, alpha = 0.05, power = c(0.8, 0.9, 0.95))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rmsea}{
vector of the expected RMSEA values.
}
  \item{df}{
model degrees of freedom.
}
  \item{width}{
vector of desired confidence interval widths to be highlighted in the graph.
}
  \item{clevel}{
confidence level (e.g., .90, .95, etc.).
}
  \item{N}{
vector of specifying the range and the increment of sample size for drawing confidence intervals. Note that N[1:2] represents the range whereas N[3] represents the increment.
}
  \item{PA_method}{
a character string specifying the desired hypothesis test for power analysis, can be one of "exact.fit", "close.fit", or "not.close.fit".
}
  \item{H0rmsea}{
RMSEA for null hypothesis.
}
  \item{alpha}{
type I error rate for power analysis.
}
  \item{power}{
vector of specifying the power values for which horizontal lines are to be added in the graph.
}
}
\details{
If user wants to implement the power analysis based on RMSEA in GAIPE, the PA_method and H0rmsea have to be specified. In such a case, the first value of rmsea is the RMSEA for the alternative hypothesis.
}

\references{
Lin, T.-Z. & Weng, L.-J. (2014) Graphical Extension of Sample Size Planning With AIPE on RMSEA Using R. Structural Equation Modeling, 21, 482-490. doi:10.1080/10705511.2014.915380
}
\author{
Tzu-Yao Lin
}
\examples{
# Drawing the graphs in  Lin & Weng (2014) #

# FIGURE 2 #
GAIPE.RMSEA(rmsea=.05,df=30,width=c(.03,.04))

# FIGURE 3 #
GAIPE.RMSEA(rmsea=c(.05,.08),df=30,width=c(.03,.04))

# FIGURE 4 #
GAIPE.RMSEA(rmsea=.025,df=30,width=c(.03,.04),PA_method="not.close.fit",H0rmsea=0.05)

# FIGURE 5 #
GAIPE.RMSEA(rmsea=.05,df=30,width=c(.03,.04),PA_method="exact.fit",H0rmsea=0) 

}