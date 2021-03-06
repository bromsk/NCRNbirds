% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CountXVisit.R
\name{CountXVisit}
\alias{CountXVisit}
\title{CountXVisit}
\usage{
CountXVisit(object, points = NA, AOU = NA, years = NA, times = NA,
  band = 1, visits = NA, output = "dataframe", ...)
}
\arguments{
\item{object}{An \code{NCRNbirds} object or a \code{list} of such objects.}

\item{points}{A character vector. The names of one or more points where the data was collected.}

\item{AOU}{A character vector. One or more AOU (American Onothological Union) codes of bird species.}

\item{years}{A vector of numbers. will return only data from the indicated years.}

\item{times}{A numeric vector of length 1 passed on to \code{link{getVisits}}. Returns only data from points where the number of years that a point has been visited is greater or equal to the value of \code{times}. This is determined based on the data found in the \code{Visits} slot.}

\item{visits}{The visits that will be used for the matrix. Defautls to \code{NA}. See Details below,}

\item{output}{Either "dataframe" (the default) or "list". Note that this must be in quotes. Determines the type of output from the function.}

\item{...}{Additional arguments passed to \code{getBirds}}

\item{band.}{A numeric vector. Defaults to 1. Only observations whose \code{Distance_id} field matches a value in \code{band} will be returned.}
}
\description{
Produces a Count X Visit matrix for use in analyses
}
\details{
This produces a Count X Visit matrix for a \code{NCRNbirds} object or a \code{list} of such objects. Each row of the matrix
 will correspond to a different pointt in a different year. The columns of the matrix will be the park code, the point name, the year 
 visited, and a column of abundances of the indcated species at that visit. If multiple species are indicated in \code{AOU}, their 
 abundances will be totaled. 
 
 If \code{visits} is left as \code{NA} then the visits used will be 1 through the number of visits indicated in the \code{visits} slot. 
 Otherwise a numeric vectore e.g. c(1,2) can be used to select which visits are used.
}
