### Software installation guide

**for the [course](https://brry.github.io/course/) 'Fundamentals of Programming'**

We want to

- mix Python and R code in quarto markdown documents (more in lesson i.2)
- try two IDEs to find out what we like about each
- have our exercises scored from within our IDEs (more in lesson i.3)

so we have a lot of software to install.  
It's a bit much at once, but it will be worth it!  

Any improvements to this guide are very welcome!

Jump to [R](#1-r), [Git](#2-git), [Python](#3-python), [VScode](#vscode), [qmd](#5-qmd), [Exercises](#6-exercises), [Misc](#7-misc)

#### 1. R

- <mark>Step 1a</mark>: install [R + RStudio](https://brry.github.io/course/install.html), change the Rdata settings
- <mark>Step 1b</mark>: check if R is on the [PATH](https://brry.github.io/course/path.html)
  and has a version > 4.3.x.

#### 2. Git

- <mark>Step 2a</mark>: in a sensible (easy to reach) location on your computer, 
create a folder for this course. Use a short expressive name like `FundamentalsProgramming`.
This will over time contain the folders *`fpsetup`* and *`FP26`*, along with the 
exercise folders *`FP_P11_Syntax`*, *`FP_P12_DataTypes`* etc, *`FP_R12_Syntax`*, *`FP_R13_Help`* etc.
- <mark>Step 2b</mark>: install [git](https://brry.github.io/course/git.html), including the SSH key setup.  
  If you already have a personal github account, use that :)
- <mark>Step 2c</mark>: follow the [use git](https://brry.github.io/course/git.html#use-git) 
section to download these instructions into your main course folder (step 2a).
- <mark>Step 2d</mark>: run *`2d_install_Rpackages.R`*. Tip: Use the Files pane (RStudio bottom right) to select and open the file.

From now on, keyboard shortcuts with `CTRL` mean `CMD` on MacOS.

#### 3. Python

- <mark>Step 3a</mark>: if not yet installed, install Python with uv:
  - install [uv](https://docs.astral.sh/uv/getting-started/installation/) (scroll down for `brew` and other options)
  - then restart your terminal (see step 1b) and run
  - `uv python install 3.12`
- <mark>Step 3b</mark>: create a virtual environment that keeps your project's packages separate from everything else 
  - if wanted, navigate to a different folder
  - `uv venv`
- <mark>Step 3c</mark>: install Python modules:
  - `uv pip install numpy pandas matplotlib`
- <mark>Step 3d</mark>: instruct RStudio to use the venv:
  - run *`3d_set_python_rstudio.R`* in RStudio as instructed inside.
- <mark>Step 3e</mark>: check Python in RStudio:
  - run *`3e_check_python_rstudio.py`* in RStudio as instructed inside.

#### 4. VScode

- <mark>Step 4a</mark>: install [VScode](https://code.visualstudio.com/Download), then  
  - in the Explorer Tab `CTRL` + `SHIFT` + `E`, open the main course folder from step 2a.
  - when prompted: manage restricted mode - add folder, click "trust"
  - open the settings (`CTRL` + `,`), search "workbench editor enable preview" and uncheck the box
- <mark>Step 4b</mark>: disable [telemetry](https://www.roboleary.net/tools/2022/04/20/vscode-telemetry.html) if you don't want to send data to Micro$oft:
  - open the Settings (`CTRL` + `,`), search "Telemetry level", set to "off"
  - open the Command Palette (`CTRL` + `SHIFT` + `P`), search "Configure Runtime Arguments" and in the argv.json file, change the value for "enable-crash-reporter" to false, restart VScode
- <mark>Step 4c</mark>: run R scripts in VScode:
  - *(to signify you should be in the main course folder, `fpsetup/` is prepended to the script names)*
  - open the file *`fpsetup/4c_set_cran_mirror.R`* (Explorer Tab `CTRL` + `SHIFT` + `E`)
  - install the R extension when prompted (or manually under Extensions with `CTRL` + `SHIFT` + `X`)
  - run the file and (as instructed there), edit and save the `.Rprofile` file
- <mark>Step 4d</mark>: run Python scripts in VScode:
  - open *`fpsetup/4d_check_python_vscode.py`* (don't run it yet)
  - install the Python extension when prompted (or manually)
  - open the Settings (`CTRL` + `,`), search "execin",
    check the box for "Python > Terminal: execute in file dir" ([Source](https://stackoverflow.com/a/65835091))
  - now run the file as instructed inside.
- <mark>Step 4e</mark>: customize keyboard shortcuts, suggestions as in RStudio.
  - press `CTRL` + `K` + `S` (or click the cog wheel at the bottom left).
  - set each wanted shortcut, then rightclick -> "show same keybindings" to deal with duplicates.  
  - search for the action e.g. with "python run" or "comment"
  
  | Action | Shortcut |
  |--------|----------|
  | Python: Run Selection/Line in Python Terminal | `CTRL` + `ENTER` |
  | Python: Run Python File in Terminal | `CTRL` + `SHIFT` + `S` |
  | Toggle Line Comment  *and*<br>Toggle Block Comment | `CTRL` + `SHIFT` + `C` |
  | Delete Line | `CTRL` + `D` |
  | Duplicate Selection | `CTRL` + `SHIFT` + `D` |

#### 5. qmd

- <mark>Step 5a</mark>: run quarto markdown scripts in **VScode**:
  - open *`fpsetup/5a_check_quarto.qmd`* 
  - install the Quarto extension when prompted (or manually)
  - restart VScode
  - render (a.k.a. compile) the file as instructed inside
- <mark>Step 5b</mark>:  open *`fpsetup/5a_check_quarto.qmd`* in **RStudio**
    - render as instructed
- <mark>Step 5c</mark>:  open *`fpsetup/5c_check_quarto_python.qmd`* in **RStudio**
    - run code chunks as instructed


#### 6. Exercises

- <mark>Step 6a</mark>: on Windows, install [RTools](https://cran.r-project.org/bin/windows/Rtools/) 
  at `C:/rtools` (compiler paths may not have spaces).
- <mark>Step 6b</mark>: run *`fpsetup/6b_setup_scoring.R`*  
- <mark>Step 6c</mark>: for scoring exercises in VScode, run *`fpsetup/6c_set_scoring_keybinding.py`*
  (change keybinding first if wanted)
- <mark>Step 7</mark>: for a more concise view of the python exercises in VScode,  
  you can press `CTRL` + `SHIFT` + `P` or `CTRL` + `,` and search "files: exclude" and add
  - **/\_\_pycache__
  - **/.co
  - **/score.py


#### 7. Misc

- <mark>Step 8</mark>: housekeeping:
  - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
  - on Mac: in any Finder folder, press `CMD` + `Shift` + `.` to  show hidden files

You made it through! 🎉  
Now you're set up for the rest of the course (and beyond).

*Again: improvements to this guide are very welcome!*
