\name{spreadanalysis}
\alias{spreadanalysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simulates the perfect spread of a resource on a time-ordered network.
}
\description{
Determines the number of unique vertices that can be causally linked to an interaction event after a certain time delay. This function determines the fraction of unique vertices reached after a certain time from a random sample of interaction events.
}
\usage{
spreadanalysis(g, timedelays, numsamples, normalizebyname=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{
The time-ordered network to be studied.
}
  \item{timedelays}{
A vector time delays at which to determine the fraction of vertices reached.
}
  \item{numsamples}{
The number of random events to sample (without replacement) as seeds for the spreading process.
}
  \item{normalizebyname}{
If true, divides the number of vertices reached by the number of unique vertex names; if false, by the number of time-ordered vertices.
}
}

\value{
A data frame whose columns are named for each time delay and contains the fraction of total vertices reached by a spreading process beginning from the seed vertices by the time delay.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}
\note{
Results can be aggregated by start vertex - see \code{transformspreadbyindividual}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{transformspreadbyindividual}}
}
\examples{
data(ants)
allindivs <- c(union(ants$VertexFrom, ants$VertexTo), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
sa <- spreadanalysis(g, seq(0,1000,by=50), 20)
boxplot(sa[,-1],xlab="Time delay",ylab="Fraction reached")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
