\name{generatetonetwork}
\alias{generatetonetwork}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generates a time-ordered network from an interaction list.
}
\description{
Constructs a directed network describing the causally permitted paths between a set of vertices that interact at known times.
}
\usage{
generatetonetwork(raw, allindivs)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{raw}{
An event list, consisting of a data frame with four columns: VertexFrom, VertexTo, TimeStart, and TimeStop. Each row in this data frame represents a single directed interaction event between VertexFrom and VertexTo beginning at TimeStart and ending at TimeStop.
}
  \item{allindivs}{
A list of all possible vertices potentially including ones not observed interacting during the range of time reported in \code{raw}. Defaults to the vertices observed in raw.
}
}

\value{
A weighted directed network of class 'igraph'. Each vertex represents an individual at a time during which an interaction occurred. Edges represent causally permitted paths of resource flow and have a TimeCost, describing the time between interactions for an individual, or is 0 if the edge represents an interaction, and a HopCost, which is 0 if the edge connects the same individual at multiple times and 1 if it connects different individuals at the same time.
}
\references{
Kostakos V. Temporal Graphs. arXiv (2008) vol. physics.soc-ph
}
\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
data(ants)
allindivs <- c(union(ants$VertexFrom, ants$VertexTo), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
plottonet(g)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
