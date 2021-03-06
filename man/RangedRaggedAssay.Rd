% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RangedRaggedAssay-class.R
\name{RangedRaggedAssay}
\alias{RangedRaggedAssay}
\title{Create a RangedRaggedAssay (DEFUNCT)}
\usage{
RangedRaggedAssay(x = GRangesList())
}
\arguments{
\item{x}{A \code{list}, \code{GRanges} or \code{GRangesList} object}
}
\value{
A \code{RangedRaggedAssay} class object
}
\description{
Construct an object representing ranged-based data, typically from a
\code{\link{GRangesList}}. The assay method will extract a particular column
from the metadata and represent it in a matrix. See the \code{show} method
for an example.
}
\section{DEFUNCT}{

The \code{RangedRaggedAssay} class is \strong{defunct} and to be removed by
the next release cycle. Please use the \strong{RaggedExperiment} class to
represent copy number, mutation and other genomic range based data. See
\code{\link[RaggedExperiment]{RaggedExperiment}} for more detail.
}

\seealso{
\code{\link{assay,RangedRaggedAssay,missing-method}}
}
