% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workflow.R
\name{lidar_region}
\alias{lidar_region}
\title{Create LiDAR DEM of a region}
\usage{
lidar_region(region, lidar_dir = NULL, only_new = TRUE)
}
\arguments{
\item{region}{sf simple features object. Shape file of the region of
interest.}

\item{lidar_dir}{Character. File path of where LiDAR tiles should be stored.
Defaults to the cache directory.}

\item{only_new}{Logical. Whether to download all LiDAr tiles, or only new
tiles that don't exist locally. Defaults to TRUE.}
}
\value{

}
\description{
This function takes a shape file of a region and creates a LiDAR DEM of the
region. LiDAR data is stored locally as tiles. Tiles are only downloaded if
they don't already exist unless \code{only_new = FALSE}.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}

library(sf)

# Load a shape file defining the region of interest
creek <- st_read("misc/data/Clinton_Creek.shp")

# Fetch LiDAR DEM
creek_lidar <- lidar_region(creek)

plot(creek_lidar)
\dontshow{\}) # examplesIf}
}
