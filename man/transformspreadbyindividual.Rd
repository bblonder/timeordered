\name{transformspreadbyindividual}
\alias{transformspreadbyindividual}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A helper function to assess differences in spreading potential by vertex.
}
\description{
Converts a data frame of spreading samples into a data frame that is grouped by vertex identity.
}
\usage{
transformspreadbyindividual(sa)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sa}{
A data frame returned by \code{spreadanalysis}
}
}

\value{
A data frame whose columns are the identities of vertices and whose rows are the mean fraction of vertices reached by the seed vertex at each time delay, averaged over all samples beginning at this vertex.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{spreadanalysis}}
}
\examples{
data(ants)
allindivs <- c(union(as.character(ants$VertexFrom), as.character(ants$VertexTo)), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
sa <- spreadanalysis(g, seq(0,1000,by=50), 20)
b <- transformspreadbyindividual(sa)
plot(ts(b),plot.type="single",col=rainbow(ncol(b)),xlab="Time",ylab="Fraction reached")
legend("bottomright",colnames(b),lwd=1,col=rainbow(ncol(b)),bg="white")

}