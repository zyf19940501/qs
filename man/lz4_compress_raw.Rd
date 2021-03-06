% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/help_files.R
\name{lz4_compress_raw}
\alias{lz4_compress_raw}
\title{lz4 compression}
\usage{
lz4_compress_raw(x, compress_level)
}
\arguments{
\item{x}{A Raw Vector}

\item{compress_level}{The compression level (> 1).}
}
\value{
The compressed data
}
\description{
Compression of raw vector.  Exports the main lz4 compression function.
}
\examples{
x <- 1:1e6
xserialized <- serialize(x, connection=NULL)
xcompressed <- lz4_compress_raw(xserialized, compress_level = 1)
xrecovered <- unserialize(lz4_decompress_raw(xcompressed))
}
