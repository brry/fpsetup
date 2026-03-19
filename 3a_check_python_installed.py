# This script displays where Python is installed.
# - in RStudio, click "Source Script" in the topright of the script panel.
# - in VScode, run it by clicking the play triangle in the topright.
# If Python is not installed yet, do not blindly follow the IDE suggestions (if given),
# but go to step 3b of the guide instead.

import sys

print(f"Python Executable:    {sys.executable}")
print(f"Python Version:       {sys.version.split()[0]}")
print(f"Prefix / Virtual Env: {sys.prefix}")

