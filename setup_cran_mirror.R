# set the download mirror for R packages
# not needed in Rstudio (does that for you) - but helpful in VScode
options(repos=c(CRAN="https://cloud.r-project.org/"))

if(!requireNamespace("usethis", quietly=TRUE)) install.packages("usethis")
usethis::edit_r_profile()
# then add the line above with options(repos=... manually
# this makes it permanent (it is run each time R is started)
