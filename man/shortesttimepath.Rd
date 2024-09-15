\name{shortesttimepath}
\alias{shortesttimepath}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Determines a path (shortest by the least time) between a vertex at a start time and another vertex at any later time.

}
\description{
-
}
\usage{
shortesttimepath(g, startvertexname, startvertextime, stopvertexname)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{
The time-ordered network on which to find paths.
}
  \item{startvertexname}{
The name of the start vertex.
}
  \item{startvertextime}{
The time of the start vertex. Must be a time at which an interaction has occurred involving this vertex.
}
  \item{stopvertexname}{
The name of the stop vertex.
}
}

\value{
A vertex list containing all the events on the shortest-time path between the start vertex at the start time and the stop vertex at a later time.

}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}
\note{
May generate warning messages - don't worry!
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{shortesthoppath}}
}
\examples{
data(ants)
allindivs <- c(union(as.character(ants$VertexFrom), as.character(ants$VertexTo)), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
stp <- shortesttimepath(g, "WBGG", 927, "Q")
plottonet(g, stp)
title(paste(diff(range(stp$Time)), "time elapsed"))

}