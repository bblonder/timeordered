\name{randomizeidentities}
\alias{randomizeidentities}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Resamples data based on vertex identity.
}
\description{
Produces a new event list from an existing event list with resampled vertex identities given certain constraints on randomization. Effectively re-orders pairs of From/To vertices between different times.
}
\usage{
randomizeidentities(raw, withinvertexfrom, byvertexfrom, withreplacement)
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
An event list of the same size or smaller as raw. The returned event list will be smaller only if resampling produces events that connect a vertex to itself; these are removed.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{randomizetimes}},\code{\link{rarefy}}
}
\examples{
data(ants)
allindivs <- c(union(ants$VertexFrom, ants$VertexTo), "NULL1", "NULL2")
ri <- randomizeidentities(ants,withinvertexfrom=TRUE,byvertexfrom=TRUE,withreplacement=TRUE)
g <- generatetonetwork(ri, allindivs)
plottonet(g)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
