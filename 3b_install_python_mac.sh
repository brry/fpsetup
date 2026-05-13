#!/bin/bash
# 1: make sure to have done step 3a.
# 2: run this file on macOS / Linux to
# - install Python
# - set up a virtual environment in ~ that keeps your project's packages separate from everything else
# - install Python modules needed in the course

set -e  # stop on first error

uv python install 3.12

uv venv ~/.venv
source ~/.venv/bin/activate

uv pip install numpy pandas matplotlib

echo ""
echo "Done! Python environment is ready."
echo "Note: the virtual environment is only active in this terminal session."
echo "To activate it again later, run:  source ~/.venv/bin/activate"
echo "Continue in step 3c."
