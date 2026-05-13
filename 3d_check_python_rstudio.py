# This script displays where Python is installed.
# It then tests whether the needed python modules are available.

# 1: Make sure you have run 3c_set_python_rstudio.R
# 2: press CTRL/CMD + SHIFT + S or click "Source Script" in the topright.

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

print("Seeing if modules can be loaded (might take a minute) ...")
import numpy
import pandas
import matplotlib
print("It worked! You're good continue in step 4a :)")
