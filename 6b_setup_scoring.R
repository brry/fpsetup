# This script sets up the exercise scoring mechanism.
stop("Do not run this entire file! Run code line by line!")
# Set the cursor anywhere in a line of code and press CTRL/CMD + ENTER to run that whole line.


# Make sure RTools will be found ----

# AFTER running step 6a:
if(.Platform$OS.type == "windows") cat('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', 
									   file= "~/.Renviron", append=TRUE)


# Install the scoring package ----

# (used for both Python and R exercises)
remotes::install_github("openHPI/codeoceanR")
# for issues (like the system libraries on Linux), see
browseURL("https://github.com/openHPI/codeoceanR#issues")


# Keyboard shortcut in Rstudio ----

remotes::install_github("brry/rskey")
rskey::setKeyboardBindings(overwrite=TRUE)

# Scoring defaults to CTRL + SHIFT + Y. To change it, go to
# RStudio - Tools - Modify Keyboard Shortcurts
# click on an addin shortcut field and press the desired key combination
# (potentially restart Rstudio)

# for more info if wanted, see
browseURL("https://github.com/brry/rskey#rskey")
