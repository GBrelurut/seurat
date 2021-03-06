% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interaction.R
\name{SplitObject}
\alias{SplitObject}
\title{Splits object into a list of subsetted objects.}
\usage{
SplitObject(object, attribute.1 = "ident", ...)
}
\arguments{
\item{object}{Seurat object}

\item{attribute.1}{Attribute for splitting. Default is "ident". Currently
only supported for class-level (i.e. non-quantitative) attributes.}

\item{\dots}{Additional parameters to pass to SubsetData}
}
\value{
A named list of Seurat objects, each containing a subset of cells
from the original object.
}
\description{
Splits object based on a single attribute into a list of subsetted objects,
one for each level of the attribute. For example, useful for taking an object
that contains cells from many patients, and subdividing it into
patient-specific objects.
}
\examples{
# Assign the test object a three level attribute
groups <- sample(c("group1", "group2", "group3"), size = 80, replace = TRUE)
names(groups) <- pbmc_small@cell.names
pbmc_small <- AddMetaData(object = pbmc_small, metadata = groups, col.name = "group")
obj.list <- SplitObject(pbmc_small, attribute.1 = "group")

}
