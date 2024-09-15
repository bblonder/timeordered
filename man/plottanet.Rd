\name{plottanet}
\alias{plottanet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots a time-aggregated network.
}
\description{
Plots a time-aggregated network. See igraph.plotting for more details.
}
\usage{
plottanet(timeaggregatednetwork, layout = layout.circle, 
	vertex.label = V(timeaggregatednetwork)$name, vertex.size = 0, 
	vertex.label.cex = 0.5, edge.arrow.size = 0.5, 
	edge.width = E(timeaggregatednetwork)$Count/5, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{timeaggregatednetwork}{
The network to print, an object of the igraph class
}
  \item{layout}{
Graph layout function - see ?layout in igraph
}
  \item{vertex.label}{
Vertex labels. Defaults to the name of each vertex.
}
  \item{vertex.size}{
Size of each vertex.
}
  \item{vertex.label.cex}{
Label size factor.
}
  \item{edge.arrow.size}{
Arrow size.
}
  \item{edge.width}{
Arrow width, defaults to be proportional to edge weight.
}
  \item{...}{
Other arguments to be passed to \code{igraph}'s plotting functionality
}
}

\value{
None; used for its side effect of producing a plot.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{generatetimeaggregatednetwork}}
}
\examples{
data(ants)
allindivs <- c(union(as.character(ants$VertexFrom), as.character(ants$VertexTo)), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
tan <- generatetimeaggregatednetwork(g, 0, 500)
plottanet(tan,layout=layout.kamada.kawai)
}
