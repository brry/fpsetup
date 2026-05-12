# This script displays where Python is installed.
# It then tests whether the needed python modules are available.

# Do not run this script yet! Follow the steps first.

# 1: install the Python extension when prompted 
#    (or manually under Extensions with `CTRL` + `SHIFT` + `X`)

# 2: open the Settings (`CTRL` + `,`), search "execin",
#    check the box for "Python > Terminal: execute in file dir" 
#    (https://stackoverflow.com/a/65835091)

# 3: press `CTRL` + `SHIFT` + `E`, search "Python: Select Interpreter", 
#    set to the path from *`3d_set_python_rstudio.R`* if shown, 
#    else click "Enter interpreter path" and enter your equivalent of ~/.venv/bin/python

# 4: customize keyboard shortcuts, suggestions as in RStudio.
#   - press `CTRL` + `K` + `S` (or click the cog wheel at the bottom left).
#   - set each wanted shortcut, then rightclick -> "show same keybindings" to deal with duplicates.  
#   - search for the action e.g. with "python run" or "comment"
#   Action | Shortcut
#   Python: Run Selection/Line in Python Terminal   | `CTRL` + `ENTER`
#   Python: Run Python File in Terminal             | `CTRL` + `SHIFT` + `S`
#   Toggle Line Comment  *and* Toggle Block Comment | `CTRL` + `SHIFT` + `C`
#   Delete Line                                     | `CTRL` + `D`
#   Duplicate Selection                             | `CTRL` + `SHIFT` + `D`

# 5: Now run this file by clicking the play triangle in the topright.

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

print("Seeing if modules can be loaded ...")
import numpy
import pandas
import matplotlib
print("It worked! You're good continue in step 5 :)")


