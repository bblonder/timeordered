\name{midpoints}
\alias{midpoints}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Determines the mean value of each row of a matrix; used as a convenience function for plotting.
}
\description{
-
}
\usage{
midpoints(td)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{td}{
A n x 2 matrix describing a set of start and stop times.
}
}

\value{
A mean value for each of n rows of td
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{generatetimelags}},\code{\link{generatetimedeltas}} ~~~
}
\examples{
tl100 <- generatetimelags(0,1500,100)
boxplot(t(midpoints(tl100)))
}