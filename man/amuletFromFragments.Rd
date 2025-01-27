% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/atac.R
\name{amuletFromFragments}
\alias{amuletFromFragments}
\title{amuletFromFragments}
\usage{
amuletFromFragments(
  x,
  barcodes = NULL,
  minFrags = 500L,
  above = 2L,
  regionsToExclude = NULL,
  uniqueFrags = FALSE,
  verbose = TRUE
)
}
\arguments{
\item{x}{The path to a fragments file, or a GRanges object containing the
fragments (with the `name` column containing the barcode, and the `score`
column containing the count).}

\item{barcodes}{Optional character vector of cell barcodes to consider}

\item{minFrags}{Minimum number of fragments for a barcode to be 
considered. If `uniqueFrags=TRUE`, this is the minimum number of unique 
fragments. Ignored if `barcodes` is given.}

\item{above}{The number of overlaps above which to count}

\item{regionsToExclude}{A GRanges of regions to exclude (e.g. repeats)}

\item{uniqueFrags}{Logical; whether to use only unique fragments.}

\item{verbose}{Logical; whether to print progress messages.}
}
\value{
A vector of the number of overlaps above `above`, named with cell 
barcodes
}
\description{
ATACseq (Thibodeau, Eroglu, et al., Genome Biology 2021)
}
\details{
This implementation is relatively fast (except for reading in the 
data) but it has a large memory footprint (easily goes above 20GB) since 
the overlaps are performed in memory.
}
