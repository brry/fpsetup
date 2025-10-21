# this installs some R packages we will need in the course
# in case you're prompted to seltect a CRAN mirror, see setup_cran_mirror first

if(!requireNamespace("pacman", quietly=TRUE)) install.packages("pacman")
pacman::p_load("reticulate", "rmarkdown", "rdwd", "remotes")
