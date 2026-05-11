'''
Send code to CodeOcean, run (hidden) scoring script, display results

This is the scoring mechanism for exercises in the course Fundamentals of Programming.
It enables scoring while working on the exercise in RStudio / VScode,
without leaving the Python execution environment.
It uses medium complex R code that will likely not be ported to Python:
https://github.com/openHPI/codeoceanR/blob/main/R/rt_score.R
'''

import os
import platform
import subprocess

def score():
    """Run the CodeOcean scoring script via R."""
    if os.getenv("CODEOCEAN")=="true": # Do not run in CodeOcean browser instance
        return
    cmd = "codeoceanR::rt_score()"
    if platform.system() != "Windows": # At least on Mac, Linux untested
        cmd = f"'{cmd}'"
    cmd = f"R -e {cmd}"
    dn = subprocess.DEVNULL
    sc = subprocess.run(cmd, shell=True, capture_output=True, stdin=dn, text=True)
    print(sc.stderr)

print("Running rt_score for WD:", os.getcwd())
score()
