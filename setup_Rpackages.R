# this installs some R packages we will need in the course
# in case you're prompted to select a CRAN mirror, see setup_cran_mirror.R first.

if(!requireNamespace("pacman", quietly=TRUE)) install.packages("pacman")
pacman::p_load("reticulate", "rmarkdown", "rdwd", "remotes", "usethis")
