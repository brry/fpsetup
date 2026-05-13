# This file points Rstudio to the course Python environment.
# Set the cursor anywhere in a line of code (skip the stop-line).
# Press CTRL/CMD + ENTER to run that whole line.
# The cursor will then jump to the next line with code.

stop("Do not run this entire file! Run code line by line!") # in case you click Source

# 1: run ONE of these:
# MacOS:
reticulate::use_virtualenv("~/.venv", required=TRUE)
# Windows:
reticulate::use_virtualenv(file.path(Sys.getenv("USERPROFILE"), ".venv"), required=TRUE)

# 2: check if this path seems sensible:
path <- reticulate::py_discover_config()$python ; path
# should end with   /.venv/bin/python   or   /.venv/Scripts/python.exe

# 3: write it into R's environment variables: 
readr::write_lines(paste0("RETICULATE_PYTHON=", path), "~/.Renviron", append=TRUE)

# 4: Restart R in one of these ways:
# - Windows: CTRL + SHIFT (+FN) + F10
# - Mac: CMD + SHIFT + 0
# RStudio -> Session -> Restart R

# 5: Check if you still get the python path:
reticulate::py_discover_config()

# 6: Restart RStudio, not just R (close and reopen)

# 7: Check if calling python works:
reticulate::py_available(TRUE)
reticulate::py_eval("f'sum is {1+1}'") # should show  "sum is 2"

# Now to continue with step 3d, open the file 3d_check_python_rstudio.py.
