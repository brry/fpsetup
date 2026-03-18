### Software installation guide

**for the [course](https://brry.github.io/course/) 'Fundamentals of Programming'**

We want to

- mix Python and R code in quarto markdown documents (more in lesson i.2)
- try two IDEs to find out what we like about each
- have our exercises scored from within our IDEs (more in lesson i.3)

so we have a lot of software to install.  
It's a bit much at once, but it will be worth it!  

Any improvements to this guide are very welcome!

Jump to [R](#r), [Git](#git), [Python](#python), [VScode](#vscode), [qmd](#qmd), [Exercises](#exercises), [Misc](#misc)

#### R

- <mark>Step 1a</mark>: install [R + Rstudio](https://brry.github.io/course/install.html), including the Rdata settings
- <mark>Step 1b</mark>: check if R is on the PATH (locations where executables are found):
  - in your OS, search (Windows: `Windows key`. Mac: `CMD` + `SPACE`) for "**Terminal**" (also known as console, shell, bash, cmd)  
  - run the command `R` (Windows Powershell: `R.exe`) - check if it's a recent version, quit with `q("no")`
  - if R is not found / recognized, add it to the _system_ (not user) PATH:
    - copy the path where you installed R  -  or  - in Rstudio -> Tools -> Global Options,
      copy the path (e.g. `C:\Program Files\R\R-4.5.1)` 
    - search (`Windows key`)  for "env", click "Edit the system environment variables",
      then "Environment Variables" ([guide with images](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/))
    - under "**System** Variables" (in the bottom half) double click on "Path"
    - click "New" and copy-paste your installation location (if from Rstudio, add `\bin` at the end)
    - close the variable windows + the terminal, open a new one and try `R`/`R.exe` again.  
      Potentially restart Windows inbetween.

#### Git

- <mark>Step 2a</mark>: in a sensible (easy to reach) location on your computer, 
create a folder for this course. Use a short expressive name like `FundamentalsProgramming`.
This will over time contain the folders `fpsetup` and `FP26`, along with the 
exercise folders `FP_P11_Syntax`, `FP_P12_DataTypes` etc, `FP_R12_Syntax`, `FP_R13_Help` etc.
- <mark>Step 2b</mark>: install [git](https://brry.github.io/course/git.html), including the SSH key setup.  
  If you already have a personal github account, use that :)
- <mark>Step 2c</mark>: follow the [use git](https://brry.github.io/course/git.html#use-git) 
section to download these instructions into your main course folder (step 2a).
- <mark>Step 2d</mark>: run `2d_install_Rpackages.R`. Tip: Use the Files pane (Rstudio bottom right) to select and open the file.

From now on, keyboard shortcuts with `CTRL` mean `CMD` on MacOS.

#### Python

- <mark>Step 3a</mark>: Check if Python is installed:
  - In a terminal (see step 1b), type `python`
  - If found with a version 3.9+, type `quit` or `quit()` and proceed to step 3c.
  - If not found, open the file `3a_check_python_installed.py` with any IDE.
  - Run it as instructed inside.
  - See if you get a printout with a version > 3.9.
  - If yes, skip step 3b. You do NOT want several versions of Python installed.
- <mark>Step 3b</mark>: if not yet installed, install Python with one of
  - standalone installation: [Python](https://www.python.org/downloads/), hints on [Windows](https://docs.python.org/using/windows.html)
  - installation via R (way easier, especially on Mac): run `3b_install_python.R` line by line
- <mark>Step 3c</mark>: install Python modules:
  - if installed via reticulate, in an R console (e.g. in Rstudio), run  
    `reticulate::py_install(c("numpy", "pandas", "matplotlib"))`
  - else, run in the terminal (step 1b):  
    `pip install numpy pandas matplotlib`  (pip3 on Mac)
- <mark>Step 3d</mark>: run `3d_check_python_setup.py`

#### VScode

- <mark>Step 4a</mark>: install [VScode](https://code.visualstudio.com/Download)  
  - in the Explorer Tab `CTRL` + `SHIFT` + `E`, open the main course folder from step 2a.
  - when prompted: manage restricted mode - add folder, click "trust"
  - open the settings (`CTRL` + `,`), search "workbench editor enable preview" and uncheck the box
- <mark>Step 4b</mark>: disable [telemetry](https://www.roboleary.net/tools/2022/04/20/vscode-telemetry.html) if you don't want to send data to Micro$oft:
  - open the Settings (`CTRL` + `,`), search "Telemetry level", set to "off"
  - open the Command Palette (`CTRL` + `SHIFT` + `P`), search "Configure Runtime Arguments" and in the argv.json file, change the value for "enable-crash-reporter" to false, restart VScode
- <mark>Step 4c</mark>: run R scripts in VScode:
  - open the file `fpsetup/4c_set_cran_mirror.R` (Explorer Tab `CTRL` + `SHIFT` + `E`)
  - install the R extension when prompted (or manually under Extensions with `CTRL` + `SHIFT` + `X`)
  - run the file and (as instructed there), edit and save the `.Rprofile` file
- <mark>Step 4d</mark>: run Python scripts in VScode:
  - open `fpsetup/3d_check_python_setup.py` (don't run it yet)
  - install the Python extension when prompted (or manually)
  - open the Settings (`CTRL` + `,`), search "execin",
    check the box for "Python > Terminal: execute in file dir" ([Source](https://stackoverflow.com/a/65835091))
  - now run the file as instructed inside.
- <mark>Step 4e</mark>: Customize keyboard shortcuts, suggestions as in Rstudio.
  - press `CTRL` + `K` + `S` (or click the cog wheel at the bottom left)
  - Set first, then rightclick -> "show same keybindings" to deal with duplicates.  
  - search "Python Run" and set
    - Selection/Line to `CTRL` + `ENTER`
    - Python File in Terminal to `CTRL` + `SHIFT` + `S`
  - search "comment" and set  
    - Toggle Line Comment to `CTRL` + `SHIFT` + `C`
    - Toggle Block Comment also to `CTRL` + `SHIFT` + `C`
  - search "delete" and set
    - Delete Line to `CTRL` + `D`
  - search "duplicate" and set
    - Duplicate Selection to `CTRL` + `SHIFT` + `D`
    
#### qmd

- <mark>Step 5a</mark>: run quarto markdown scripts in **VScode**:
  - open `fpsetup/5a_check_quarto.qmd` 
  - install the Quarto extension when prompted (or manually)
  - render (a.k.a. compile) the file as instructed inside
- <mark>Step 5b</mark>:  Open `fpsetup/5a_check_quarto.qmd` in **Rstudio**
    - render as instructed
- <mark>Step 5c</mark>:  Open `fpsetup/5c_check_quarto_python.qmd` in **Rstudio**
    - run code chunks as instructed


#### Exercises

- <mark>Step 6a</mark>: in an R console (e.g. in Rstudio), run  
  `remotes::install_github("openHPI/codeoceanR")`  
  Ignore the Rtools warning.  
  For issues (like the system libraries on Linux), see these [solutions](https://github.com/openHPI/codeoceanR#issues).  
- <mark>Step 6b</mark>: copy the file `fpsetup/scriptunzip.py` into your main course folder (one level up)
- <mark>Step 7</mark>: For a more concise view of the python exercises in VScode,  
  you can press `CTRL` + `SHIFT` + `P` or `CTRL` + `,` and search "files: exclude" and add
  - **/\_\_pycache__
  - **/.co
  - **/score.py
- <mark>Step 8</mark>: for scoring python exercises with a keyboard shortcut,
  - run `fpsetup/8a_set_scoring_keybinding.py` (change keybinding first if wanted)


#### Misc

- <mark>Step 9</mark>: housekeeping:
  - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
  - on Mac: in any Finder folder, press `CMD` + `Shift` + `.` to  show hidden files

You made it through! 🎉  
Now you're set up for the rest of the course (and beyond).

*Again: improvements to this guide are very welcome!*
