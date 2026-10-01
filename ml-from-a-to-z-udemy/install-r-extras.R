# Install R lesson packages unavailable as portable Conda packages.
# Run after creating or updating the Conda environment:
#   Rscript install-r-extras.R

install_if_missing <- function(package, repos = "https://cloud.r-project.org") {
  if (!requireNamespace(package, quietly = TRUE)) {
    install.packages(package, repos = repos)
  }
}

install_if_missing("arules")

# ElemStatLearn was archived on CRAN. The course uses its data sets, including
# the data required by several classification lessons.
if (!requireNamespace("ElemStatLearn", quietly = TRUE)) {
  install.packages(
    "https://cran.r-project.org/src/contrib/Archive/ElemStatLearn/ElemStatLearn_2015.6.26.2.tar.gz",
    repos = NULL,
    type = "source"
  )
}

install_if_missing(
  "h2o",
  repos = "https://h2o-release.s3.amazonaws.com/h2o/latest_stable_R"
)
