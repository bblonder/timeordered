\name{randomly_permuted_times}
\alias{randomly_permuted_times}
\alias{vertex_randomization}
\alias{contact_randomization}
\alias{time_reversal}
\alias{randomly_permuted_times}
\alias{random_times}
\alias{randomized_contacts}
\alias{edge_randomization}
\alias{total_randomization}
\alias{randomized_edges}
\title{
Randomize temporal networks
}
\description{
Take a data frame specifying the edges of a temporal network and create a 
randomized reference network which maintains certain properties of the original
network and destroys others.
}
\usage{
total_randomization(edges)
randomly_permuted_times(edges)
vertex_randomization(edges)
contact_randomization(edges)
time_reversal(edges)
randomly_permuted_times(edges)
random_times(edges)
randomized_contacts(edges)
edge_randomization(edges)
randomized_edges(edges)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{edges}{
A \code{data.frame} of contacts specifying a temporal network.
The \code{data.frame} has four columns: \code{VertexFrom}, \code{VertexTo}, 
\code{TimeStart}, and \code{TimeStop}. Each row represents a single directed 
contact between \code{VertexFrom} and \code{VertexTo}, beginning at 
\code{TimeStart} and ending at \code{TimeStop}. \code{TimeStart} and 
\code{TimeStop} may not be smaller than 0.
}
}
\details{
\code{randomly_permuted_times} permutes the start time of contacts and
adjusts the end time to maintain contact duration.

\code{vertex_randomization} assigns vertices randomly and with equal 
probability to contacts.

\code{contact_randomization} randomly permutes vertices between contacts.

\code{time_reversal} reverses the temporal order of contacts while 
maintaining the temporal distance of contacts. 

\code{randomly_permuted_times} randomly permutes the start time of contacts
while maintaining contact duration.

\code{random_times} assigns to the start time of each contact a random time  
between \code{min(edges$TimeStart)} and \code{max(edges$TimeStop)}, 
maintaining the duration of each contact.

\code{randomized_contacts} redistributes contacts randomly among edges.

\code{edge_randomization} randomly exchanges whole contact sequences between 
edges.

\code{randomized_edges} randomly rewires edges. When an edge gets rewired,
the contact sequence associated with that edge follow the edge.

\code{total_randomization} assigns vertices randomly to contacts, assuming
that all vertices are equally likely participate in a contact

Randomized reference networks returned by these functions contain no contacts
with self.
}
\value{
A \code{data.frame} with the same columns as the \code{edges}, specifying the
contacts of the randomized reference network.
}
\references{
Holme & Saramaki, Physics Reports 519 (2012), p. 116-118
}
\author{
Tim Gernat <mail@timgernat.name>
}
\examples{
# load a temporal network
require(timeordered)
data(ants)

# randomly permute contact start timestamps while preserving contact duration
r1 <- randomly_permuted_times(ants)

# randomly permute vertices between contacts and assign a random start 
# timestamp to each contact while preserving contact duration
r2 <- contact_randomization(ants)
r2 <- random_times(r1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
