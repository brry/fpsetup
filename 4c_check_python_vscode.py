# This script displays where Python is installed.
# It then tests whether the needed python modules are available.

# Run this file by clicking the play triangle in the topright.

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

print("Seeing if modules can be loaded ...")
import numpy
import pandas
import matplotlib
print("It worked! You're good continue in step 4d :)")
