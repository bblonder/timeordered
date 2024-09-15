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
A dataframe
}
  \item{r1}{
The first row to swap
}
  \item{c1}{
The first column to swap
}
  \item{r2}{
The second row to swap
}
  \item{c2}{
The second column to swap
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