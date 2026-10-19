# 1: make sure to have done step 3a.
# 2: run this file on Windows to
# - install Python
# - set up a virtual environment in ~ that keeps your project's packages separate from everything else
# - install Python modules needed in the course

$ErrorActionPreference = "Stop"  # stop on first error

uv python install 3.12

uv venv "$HOME\.venv"
& "$HOME\.venv\Scripts\Activate.ps1"

uv pip install numpy pandas matplotlib jupyter

# If you use the venv in a new terminal (not needed for this course),
# run the activate line in that new terminal again.

Write-Host ""
Write-Host "Done! Python environment is ready."
Write-Host "Continue in step 3c."
