# This script displays where Python is installed.
# It then tests whether the needed python modules are available.

# !!! Make sure to first run all previous instructions in step 4d !!!

# Run this file in VScode by clicking the play triangle in the topright.

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

print("Seeing if modules can be loaded ...")
import numpy
import pandas
import matplotlib
print("It worked! You're good continue in step 4e :)")
