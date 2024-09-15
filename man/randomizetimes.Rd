\name{randomizetimes}
\alias{randomizetimes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resamples data based on event time.
}
\description{
Produces a new event list from an existing event list with resampled event times given certain constraints on randomization. Effectively re-orders pairs of start/stop times between different vertices.
}
\usage{
randomizetimes(raw, withinvertexfrom, byvertexfrom, withreplacement)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{raw}{
A raw event list to be resampled. Contains four columns: VertexFrom, VertexTo, TimeStart, TimeStop
}
  \item{withinvertexfrom}{
If true, resamples within data subsets where VertexFrom is fixed; otherwise resamples within all data.
}
  \item{byvertexfrom}{
If true, subsets of data for withinvertexfrom are obtained using VertexFrom; if false, using VertexTo.
}
  \item{withreplacement}{
Samples with or without replacement.
}
}

\value{
An event list of the same size as raw with event times resampled. Resampling does not break the relationship between start and stop time; i.e. resampled events will have the same duration as original events.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{randomizeidentities}},\code{\link{rarefy}}
}
\examples{
data(ants)
allindivs <- c(union(as.character(ants$VertexFrom), as.character(ants$VertexTo)), "NULL1", "NULL2")
rt <- randomizetimes(ants,withinvertexfrom=TRUE,byvertexfrom=TRUE,withreplacement=TRUE)
g <- generatetonetwork(rt, allindivs)
plottonet(g)


}