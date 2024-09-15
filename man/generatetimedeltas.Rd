\name{generatetimedeltas}
\alias{generatetimedeltas}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Constructs matrix of sequential time windows suitable for slicing time ordered networks
}
\description{
-
}
\usage{
generatetimedeltas(starttime, stoptime, delta)
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
The size of each time window.
}
}

\value{
A n x 2 matrix. Each row contains the start and stop time of a window with width delta.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{generatetimelags}} ~~~
}
\examples{
td100 <- generatetimedeltas(0,1500,100)
boxplot(t(td100))
}