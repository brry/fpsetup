# This script installs (if not already done) some R packages we will need in the course.
# Run it in RStudio with CTRL + SHIFT + S or clicking "Source" in the topright.
# In case you're prompted to select a CRAN mirror, see 4c_set_cran_mirror.R first.

if(!requireNamespace("pacman", quietly=TRUE)) install.packages("pacman")
pacman::p_load("reticulate", "rmarkdown", "rdwd", "remotes", "usethis")
