# This file helps you install Python, especially on Mac OS.
# It uses R because it simply works!
# If you find a better way, please provide instructions...

stop("Do not run this entire file! Run code line by line!")

# Set the cursor anywhere in a line of code and press CTRL + ENTER to run that whole line.

# check first:
reticulate::py_config()
reticulate::py_available(TRUE)
# if this succeeds, you're done. Continue with step 3c.


# install Python if needed:
usethis::edit_r_environ()
# add the following line to the file (without #), save and close it.
#       CONDA_PLUGINS_AUTO_ACCEPT_TOS=yes

# Restart R in one of these three ways:
# - Windows: CTRL + SHIFT (+FN) + F10
# - Mac: CMD + SHIFT + 0
# RStudio -> Session -> Restart R

reticulate::install_miniconda()

# if this fails with: Terms of Service have not been accepted for the following channels...
# copy and run each line in the terminal (RStudio bottom panel), then:
reticulate::install_miniconda(force=TRUE)

# Restart R, then run
reticulate::py_config()
reticulate::py_available(TRUE)
# if this succeeds, you're done. Continue with step 3c.

# if this fails, manually select the Python environment
reticulate::use_miniconda(condaenv="r-reticulate", required=TRUE)
# make the choice permanent (normally happens automatically in the background):
reticulate::py_config()
usethis::edit_r_environ()
# Add the following line (with your python executable from the config output)
# RETICULATE_PYTHON=~/Library/r-miniconda/envs/r-reticulate/bin/python

# Restart RStudio, check if calling python works:
reticulate::py_available(TRUE)
reticulate::py_eval("1+1")
