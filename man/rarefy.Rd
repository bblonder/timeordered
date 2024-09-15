\name{rarefy}
\alias{rarefy}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simulates the effect of insufficient sampling by data rarefaction.
}
\description{
Randomly removes a fixed fraction of the event list.
}
\usage{
rarefy(raw, fraction)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{raw}{
The event list to be rarefied.
}
  \item{fraction}{
A fraction (between 0 and 1) of the events to be randomly deleted.
}
}

\value{
An event list with floor(nrow(raw) * fraction) events remaining.
}

\author{Benjamin Blonder \email{bblonder@email.arizona.edu}.}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{randomizeidentities}},\code{\link{randomizetimes}}
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.


}