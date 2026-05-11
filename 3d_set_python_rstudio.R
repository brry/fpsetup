# This file points Rstudio to the course Python environment.
# Set the cursor anywhere in a line of code (skip the stop-line).
# Press CTRL/CMD + ENTER to run that whole line.

stop("Do not run this entire file! Run code line by line!") # in case you click Source

# if in Step 3b you set a different folder, change "~/.venv" here
reticulate::use_virtualenv("~/.venv", required=TRUE)

# copy the output of
message("RETICULATE_PYTHON=", reticulate::py_discover_config()$python)
# which should look something like the following (with home ~/ folder expanded):
# RETICULATE_PYTHON=~/.venv/bin/python

usethis::edit_r_environ()
# paste the previous output into the .Renviron file and close it.

# Restart R in one of these ways:
# - Windows: CTRL + SHIFT (+FN) + F10
# - Mac: CMD + SHIFT + 0
# RStudio -> Session -> Restart R

# Check if you still get the python path
reticulate::py_discover_config()

# Restart RStudio, check if calling python works:
reticulate::py_available(TRUE)
reticulate::py_eval("f'sum is {1+1}'") # should show  "sum is 2"
