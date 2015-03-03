\name{ants}
\docType{data}
\alias{ants}
\title{Ant interaction data}
\description{
From a recent study of information flow in ant colonies. In this study, ants were uniquely marked with paint and identified by a four letter code - e.g. WGWB denotes an ant with a red head, green thorax, white left gaster, and blue right gaster. Body positions with missing paint marks are denoted with underscores. 

In-nest activity was recorded with a high definition video camera. The complete set of pairwise interactions between all individuals at all times was obtained by several undergraduates repeatedly watching each video. Interactions were defined as any touch between one ant's antenna and any body part of another ant.

The dataset contains four columns: VertexFrom, VertexTo, TimeStart, and TimeStop. Each row is a unique interaction between two ants. Each interaction is directed, indicating that the VertexFrom ant has initiated a contact with the VertexTo ant. TimeStart and TimeStop characterize when the interaction began and finished. In this demo version of the data set, TimeStop = TimeStart + 1. Times are recorded in seconds.

}
\usage{ants}
\format{A data frame containing 1911 observations over 24 minutes.}
\source{Blonder & Dornhaus (2011), Supplementary Information, Colony 1-1.}
\references{
Blonder & Dornhaus, \emph{Time-ordered networks reveal limitations to information flow in ant colonies}. PLoS One (2011), in press.
}
\keyword{datasets}