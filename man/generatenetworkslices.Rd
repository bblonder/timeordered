\name{generatenetworkslices}
\alias{generatenetworkslices}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generates multiple time-aggregated networks from a time-ordered network
}
\description{
Constructs weighted directed networks from all events occurring within certain time windows. Weight is equal to the number of interactions observed during the time window.
}
\usage{
generatenetworkslices(g, timedeltas)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{
The time-ordered network to be sliced.
}
  \item{timedeltas}{
A n x 2 matrix, where each row contains a set of start (first column) and stop (second column) times at which the network should be sliced.
}
}

\value{
A list containing n time-aggregated networks corresponding to the n time windows.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{plotnetworkslices}}, \code{\link{generatetimedeltas}}, \code{\link{generatetimelags}}~~~
}
\examples{
data(ants)
allindivs <- c(union(as.character(ants$VertexFrom), as.character(ants$VertexTo)), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
td100 <- generatetimedeltas(0,1500,100)
ns100 <- generatenetworkslices(g, td100)
plotnetworkslices(ns100, td100)

}
