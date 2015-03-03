\name{applynetworkfunction}
\alias{applynetworkfunction}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Applies a function (typically a descriptive statistic) to multiple time-aggregated networks
}
\description{
-
}
\usage{
applynetworkfunction(slices, fun)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{slices}{
A list of time-aggregated networks, of class igraph
}
  \item{fun}{
The function to be applied; takes a single argument
}
}

\value{
A list whose entries represent the function's value for each network
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{generatenetworkslices}}, 
}
\examples{
data(ants)
allindivs <- c(union(ants$VertexFrom, ants$VertexTo), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
td100 <- generatetimedeltas(0,1500,100)
ns100 <- generatenetworkslices(g, td100)
md100 <- applynetworkfunction(ns100, diameter)
tl100 <- generatetimelags(0,1500,100)
nl100 <- generatenetworkslices(g, tl100)
ml100 <- applynetworkfunction(nl100, function(x){diameter(x)})
par(mfrow=c(1,2))
plot(midpoints(td100),unlist(md100),type="l",xlab="Time (window size = 100)",ylab="Diameter")
plot(maxpoints(tl100),unlist(ml100),type="l",xlab="Aggregation time",ylab="Diameter")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
