# Set the download mirror for R packages.
# This is not needed in RStudio (which does that for you).

# 1: Make sure you have run 2d_install_Rpackages.R in Rstudio
# 2: Make sure you have turned off the workbench editor preview in step 4a

# 3: when prompted (or manually under Extensions with `CTRL` + `SHIFT` + `X`),
#    install the R extension

# 4: Run this script with the Play button on the topright.

# Open the R startup code (.Rprofile) that is run each time R is started:
usethis::edit_r_profile()

# 5: Copy the following line into it:
options(repos=c(CRAN="https://cloud.r-project.org/"))

# 6: Save and close the .Rprofile file.
