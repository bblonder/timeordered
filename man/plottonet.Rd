\name{plottonet}
\alias{plottonet}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plots a time-ordered network.
}
\description{
Plots a time-ordered network with vertices ordinated along the x-axis and time increasing along the y-axis. Interactions are drawn as horizontal lines; vertices are connected to themselves in time by vertical lines.
}
\usage{
plottonet(g, path = NULL, edgecolor = "gray", 
	edgehighlightcolor = "red", vertex.size = 0.01, 
	edge.arrow.size = 0.1, edge.width = 0.2, 
	vertex.color = NA, vertex.label.cex = 0.1, 
	vertex.frame.color = NA, vertex.label.color = "black")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{g}{
The time-ordered network to plot
}
  \item{path}{
If supplied, a particular list of vertices comprising a causally-permitted path that will be highlighted in the final illustration.
}
  \item{edgecolor}{
The color of all edges in the graph.
}
  \item{edgehighlightcolor}{
The color of the vertx path to be highlighted.
}
  \item{vertex.size}{
Vertex size. See igraph.plotting for more details.
}
  \item{edge.arrow.size}{
Edge arrow size.
}
  \item{edge.width}{
Edge width.
}
  \item{vertex.color}{
Vertex color.
}
  \item{vertex.label.cex}{
Vertex label size factor.
}
  \item{vertex.frame.color}{
Vertex frame color.
}
  \item{vertex.label.color}{
Vertex label color.
}
}

\value{
None; used for its side-effect of producing a plot.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{generatetonetwork}}
}
\examples{
data(ants)
allindivs <- c(union(as.character(ants$VertexFrom), as.character(ants$VertexTo)), "NULL1", "NULL2")
g <- generatetonetwork(ants, allindivs)
plottonet(g)


}