\name{generatetimelags}
\alias{generatetimelags}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Constructs matrix of increasingly large time windows suitable for assessing how window size affects time aggregated networks
}
\description{
-
}
\usage{
generatetimelags(starttime, stoptime, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{starttime}{
The starting time of the first time window.
}
  \item{stoptime}{
The stopping time of the last time window.
}
  \item{delta}{
The size by which to increase each time window.
}
}

\value{
A n x 2 matrix. Each row contains the start and stop time of a window with widths increasing by delta.

}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{generatetimedeltas}}
}
\examples{
tl100 <- generatetimelags(0,1500,100)
boxplot(t(tl100))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
