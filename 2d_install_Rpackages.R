# This script installs (if not already done) the R packages needed in the course.

# 1: Run it in RStudio with CTRL/CMD + SHIFT + S or clicking "Source" in the topright.

# In the unlikely case you're prompted to select a CRAN mirror, 
# pick any of the options and later run 4c_set_cran_mirror.R.

if(!requireNamespace("pacman", quietly=TRUE)) install.packages("pacman")
pacman::p_load("reticulate", "rmarkdown", "rdwd", "remotes", "usethis", 
			   "pkgbuild", "readr")
