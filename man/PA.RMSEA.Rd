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
a character string specifying the hypothesis test for power analysis, must be one of "exact.fit", "close.fit", or "not.close.fit"(default).
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
Hancock, G. R., & Freeman, M. J. (2001). Power and sample size for the root mean square error of approximation test of not close fit in structural equation modeling. Educational and Psychological Measurement, 61(5), 741-758. doi: 10.1177/00131640121971491

MacCallum, R. C., Browne, M. W., & Sugawara, H. M. (1996). Power analysis and determination of sample size for covariance structure modeling. Psychological Methods, 1(2), 130-149. doi: 10.1037/1082-989X.1.2.130
}
\author{
Tzu-Yao Lin
}
\examples{

PA.RMSEA(df=30,method="not.close.fit",H0rmsea=.05,HArmsea=.02,power=.8,alpha=.05)

# Reproducing Table 8 in Hancock and Freeman (2001) #

# DF=c(seq(5,100,5),seq(110,200,10),225,250)
# POWER=c(seq(.5,.99,.05),.99)
# out=matrix(NA,length(DF),length(POWER))
# for(i in 1:length(DF)){
#   for(j in 1:length(POWER)){
#     out[i,j]=PA.RMSEA(df=DF[i],method="not.close.fit",
#     H0rmsea=.05,HArmsea=.02,power=POWER[j],alpha=.05)
#   }
# }
# colnames(out)=paste("Pi=",POWER,"",sep="")
# rownames(out)=paste("df=",DF,"",sep="")
# out
}