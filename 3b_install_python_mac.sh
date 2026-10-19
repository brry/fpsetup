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

uv pip install numpy pandas matplotlib jupyter

# If you use the venv in a new terminal (not needed for this course),
# run the activate line in that new terminal again.

echo ""
echo "Done! Python environment is ready."
echo "Continue in step 3c."
