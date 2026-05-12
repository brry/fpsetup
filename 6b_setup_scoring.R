# This script sets up the exercise scoring mechanism.
# Set the cursor anywhere in a line of code (skip the stop line) and 
# press CTRL/CMD + ENTER to run that whole line.
stop("Do not run this entire file! Run code line by line!")

# 1: On Windows only: make sure you have run step 6a.

# 2: On Windows only: let RTools be found:
if(.Platform$OS.type == "windows" && !pkgbuild::check_build_tools() ) {
  rtools_home <- Sys.getenv("R_RTOOLS45_PATH") # for older versions use "RTOOLS44_HOME"
  if(rtools_home=="") stop("Rtools not found. Fix previous line / run step 6a.")
  cat(paste0('PATH="',rtools_home,';${PATH}"'), file="~/.Renviron", append=TRUE)
  stop("RTools added to R's PATH. Restart R (CTRL + SHIFT + F10) and run this check again.")
}

# 3: Install the scoring package (used for both Python and R exercises)
remotes::install_github("openHPI/codeoceanR")
# to solve installation issues (like the system libraries on Linux), see
browseURL("https://github.com/openHPI/codeoceanR#issues")

# 4: set keyboard shortcut in Rstudio:
remotes::install_github("brry/rskey")
rskey::setKeyboardBindings(overwrite=TRUE)

# Scoring defaults to CTRL + SHIFT + Y. To change it, go to
# RStudio - Tools - Modify Keyboard Shortcurts
# click on an addin shortcut field and press the desired key combination
# (potentially restart Rstudio)

# for more info if wanted, see
browseURL("https://github.com/brry/rskey#rskey")
