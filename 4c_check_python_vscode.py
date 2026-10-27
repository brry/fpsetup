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
print("It worked! Run the REPL demo below, then continue in step 4d :)")

# About the REPL (Read-Eval-Print Loop), see also the video demo in lesson i.1.:
# REPL helps you build up an analysis step by step and inspect results as you go,
# no need to always run the whole file.

# Demo: set the mouse cursor anywhere in the following line:
steps = [4200, 8100, 6500]
# Press SHIFT + ENTER (or CTRL + ENTER after step 4d if so wanted)
# This should display >>> in the terminal and display the full command.

# Double click "steps" above to mark it and run just that selection.
# It should display the content, i.e. [4200, 8100, 6500]

# Mark "sum(steps)" below (mouse or SHIFT + ARROW_RIGHT) and run it to see 18800
sum(steps) / len(steps)
# Run the full line above (SHIFT / CTRL + ENTER while the cursor is on that line)
# to see the average 6266.6

# Mark the following three lines (SHIFT + ARROW_DOWN) and run them
steps.append(9700)
steps
max(steps)
# The output should look like this in the terminal:
'''
>>> steps.append(9700)
>>> steps
[4200, 8100, 6500, 5700, 9700]
>>> max(steps)
9700
'''

# While the REPL is active, you cannot run full files (e.g. with the play button).
# To end it, click in the terminal so that the focus is there, and press
#   CTRL + Z, then ENTER on Windows
#   control + D on Mac
# or type `quit()` and press ENTER.
# The prompt now no longer starts with >>>

# Once you closed the REPL, proceed with step 4d :)
