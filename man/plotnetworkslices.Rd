\name{plotnetworkslices}
\alias{plotnetworkslices}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots a time-aggregated network
}
\description{
-
}
\usage{
plotnetworkslices(slices, timedeltas)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{slices}{
A list of n time-aggregated networks
}
  \item{timedeltas}{
A n x 2 matrix describing the start and stop times for each time-aggregated network
}
}

\value{
None; used for its side effect of producing a plot.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plotnetworkslices}}, \code{\link{generatetimedeltas}}, \code{\link{generatetimelags}}~~~
}
\examples{
data(ants)
allindivs <- c(union(ants$VertexFrom, ants$VertexTo), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
td100 <- generatetimedeltas(0,1500,100)
ns100 <- generatenetworkslices(g, td100)
plotnetworkslices(ns100, td100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
