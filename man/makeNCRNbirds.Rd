% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeNCRNbirds.R
\name{makeNCRNbirds}
\alias{makeNCRNbirds}
\title{makeNCRNBbirds}
\usage{
makeNCRNbirds(object, ParkCode, ShortName, LongName, Network, points = NA,
  ...)
}
\arguments{
\item{object}{Either an \code{NCRNbirds} object or a \code{list} of such objects}

\item{ParkCode}{The parkcode for the new \code{NCRNbirds} object}

\item{ShortName}{The short name for the new \code{NCRNbirds} object}

\item{LongName}{The long name for the new \code{NCRNbirds} object}

\item{Network}{The network code for the new \code{NCRNbirds} object}

\item{points}{An optional charcter vector with point names. When specificied, only data from the given poits will be included in the new \code{NCRNbirds} Object.}
}
\description{
makes a new \code{NCRNbirds} object from one or more existing objects
}
\details{
This function creates new \code{NCRNbirds} objects by combining two or more previously existing objects and/or by subsetting exisitng objects. If more than one object is provided then the data for these objects is combined. Providing a \code{points} argument will indicate which points are in the new object. The user must indicate the new network code, park code and park names.
}
