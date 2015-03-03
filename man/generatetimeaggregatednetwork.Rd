\name{generatetimeaggregatednetwork}
\alias{generatetimeaggregatednetwork}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Constructs a weighted time-aggregated network from a time-ordered network by aggregating interactions occurring between a start and stop time. Weights are stored as E(g)$weight.
}
\description{
-
}
\usage{
generatetimeaggregatednetwork(g, starttime, stoptime)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{
The time-ordered network to be aggregated
}
  \item{starttime}{
The time at which to begin aggregating interactions.
}
  \item{stoptime}{
The time at which to stop aggregating interactions.
}
}

\value{
A weighted time-aggregated network whose edge weights equal the number of interactions between those vertices in the time window.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{generatenetworkslices}}
}
\examples{
data(ants)
allindivs <- c(union(ants$VertexFrom, ants$VertexTo), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
tan500 <- generatetimeaggregatednetwork(g, 0, 500)
plottanet(tan500)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
