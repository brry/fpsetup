# This script checks whether calling Python works in a clean RStudio session.

# 1: Make sure you have run 3b_install_python.R and restarted RStudio.
# 2: press CTRL/CMD + SHIFT + S or click "Source Script" in the top right.

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

print("Seeing if modules can be loaded (might take a minute) ...")
import numpy
import pandas
import matplotlib
print("Running Python code from RStudio works! Continue in step 4a :)")
