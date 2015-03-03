\name{swap}
\alias{swap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Swaps two elements in a data frame. An internal function.
}
\description{
NA
}
\usage{
swap(df, r1, c1, r2, c2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
%%     ~~Describe \code{df} here~~
}
  \item{r1}{
%%     ~~Describe \code{r1} here~~
}
  \item{c1}{
%%     ~~Describe \code{c1} here~~
}
  \item{r2}{
%%     ~~Describe \code{r2} here~~
}
  \item{c2}{
%%     ~~Describe \code{c2} here~~
}
}
\author{
Tim Gernat <mail@timgernat.name>
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (df, r1, c1, r2, c2) 
{
    tmp <- df[r1, c1]
    df[r1, c1] <- df[r2, c2]
    df[r2, c2] <- tmp
    return(df)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
