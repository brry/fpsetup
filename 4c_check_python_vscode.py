# This script displays where Python is installed.
# It then tests whether the needed python modules are available.

# Run this file by clicking the play triangle in the topright.
# After step 4d, run it with CMD/CTRL + SHIFT + S (or whatever you chose).

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

# Check if set to ~/.venv:
if ".venv" not in sys.prefix:
    sys.exit(f"""
ERROR: VS Code is not using the .venv interpreter!
  Currently selected: {sys.executable}
  Fix it:
    1. press CTRL/CMD + SHIFT + P
    2. Search "Python: Select Interpreter"
    3. Choose the one with .venv, if listed, else:
       Click "Enter interpreter path" and then "Find",
       set to the RStudio Python Executable output of 3d_check_python_rstudio.py
       e.g C:/users/berry/.venv/Scripts/python.exe or /Users/berry/.venv
""")

print("Seeing if modules can be loaded ...")
import numpy
import pandas
import matplotlib
print("It worked! Nearing setup completion! You're good to continue in step 4d :)")
