# Set the download mirror for R packages.
# This is not needed in RStudio (which does that for you).

# First make sure you have turned off the workbench editor preview in step 4a!

# Run these lines one by one with SHIFT + ENTER (if not changed to different keyboard shortcut)
# or in one go with the Play button on the topright.

# Edit the R startup code (.Rprofile) that is run each time R is started:
if(!requireNamespace("usethis", quietly=TRUE)) install.packages("usethis")
usethis::edit_r_profile()
#  This opens .Rprofile. Copy the following line into it:
options(repos=c(CRAN="https://cloud.r-project.org/"))
# If you go line by line, also run the previous line now.
