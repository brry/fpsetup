### Software installation guide

**for the course 'Fundamentals of Programming'**

We want to

- mix Python and R code in quarto markdown documents (more in lesson I1.5)
- try two IDEs to find out what we like about each
- have our exercises scored from within our IDEs (more in lesson I1.3)

so we have a lot of software to install.  
It's a bit much at once, but it will be worth it!  

Any improvements to the guide are very welcome!

Jump to [R](#r), [Git](#git), [Python](#python), [VScode](#vscode), [Misc](#misc)

#### R

- <mark>Step 1a</mark>: install [R + Rstudio](https://bookdown.org/brry/course/install.html), including the Rdata settings
- <mark>Step 1b</mark>: check if R is on the PATH (locations where executables are found):
  - in your OS, search (Windows: `Windows key`. Mac: `CMD` + `SPACE`) for "**Terminal**" (a.k.a. console, shell, bash, cmd)  
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

- <mark>Step 2a</mark>: install [git](https://bookdown.org/brry/course/git.html), including the SSH key setup.  
  If you already have a personal github account, use that :)
- <mark>Step 2b</mark>: follow the [use git](https://bookdown.org/brry/course/git.html#use-git) section to download these instructions
- <mark>Step 2c</mark>: run `setup_Rpackages.R`. Tip: Use the Files pane (Rstudio bottom right) to select and open the file.

From now on, keyboard shortcuts with `CTRL` mean `CMD` on MacOS.

#### Python

- <mark>Step 3a</mark>: install Python with one of
  - standalone installation: [Python](https://www.python.org/downloads/), hints on [Windows](https://docs.python.org/using/windows.html)
  - installation from R (way easier, especially on Mac): run `setup_Python.R` line by line
- <mark>Step 3b</mark>: install Python modules:
  - on Windows / if you use the system Python, run in the terminal:  
    `pip install numpy pandas matplotlib`  
    (pip3 instead of pip on Mac)
  - else, in an R console (e.g. in Rstudio), run  
    `reticulate::py_install(c("numpy", "pandas", "matplotlib"))`
- <mark>Step 3c</mark>: run `check_python_setup.py` (`CTRL` + `SHIFT` + `S`)

#### VScode

- <mark>Step 4a</mark>: install [VScode](https://code.visualstudio.com/Download)  
  - open the folder to the fpsetup folder from Step 2b. (Explorer Tab `CTRL` + `SHIFT` + `E`)
  - When prompted: manage restricted mode - add folder, click "trust"
  - open the settings (`CTRL` + `,`), search "workbench editor enable preview" and uncheck the box
- <mark>Step 4b</mark>: disable [telemetry](https://www.roboleary.net/tools/2022/04/20/vscode-telemetry.html) if you don't want to send data to Micro$oft:
  - open the Settings (`CTRL` + `,`), search "Telemetry level", set to "off"
  - open the Command Palette (`CTRL` + `SHIFT` + `P`), search "Configure Runtime Arguments" and in the argv.json file, change the value for "enable-crash-reporter" to false, restart VScode
- <mark>Step 4c</mark>: run R scripts in VScode:
  - open the file `setup_cran_mirror.R` (Explorer Tab `CTRL` + `SHIFT` + `E`)
  - install the R extension when prompted (or manually under Extensions with `CTRL` + `SHIFT` + `X`)
  - run the file
  - edit and save the Rprofile file
- <mark>Step 4d</mark>: run Python scripts in VScode:
  - open `check_python_setup.py`
  - install the Python extension when prompted (or manually)
  - open the Settings (`CTRL` + `,`), search "execin",
    check the box for "Python > Terminal: execute in file dir" ([Source](https://stackoverflow.com/a/65835091))
  - now run `check_python_setup.py`  
    If errors are raised, go back to Step 3b or potentially press `CTRL` + `SHIFT` + `P`, 
    search "Python: Select Interpreter", set to the path from `setup_python.R`
- <mark>Step 4e</mark>: run qmd scripts in VScode:
  - open `check_quarto.qmd` 
  - install the Quarto extension when prompted (or manually)
  - render (a.k.a. compile) `check_quarto.qmd` as instructed inside
- <mark>Step 4f</mark>:  `CTRL` + `K` + `S` to open keyboard shortcuts (or via the cog wheel at the bottom left)
  and set whichever you like (suggestions as in Rstudio). 
  Set first, then rightclick -> "show same keybindings" to deal with duplicates.  
  - (useful for scoring exercices) search "Python Run" and set
    - Selection/Line to `CTRL` + `ENTER`
    - Python File in (Dedicated\*) Terminal to `CTRL` + `SHIFT` + `S` (*: see Step 7)
  - search "comment" and set  
    - Toggle Line Comment to `CTRL` + `SHIFT` + `C`
    - Toggle Block Comment also to `CTRL` + `SHIFT` + `C`
  - search "delete" and set
    - Delete Line to `CTRL` + `D`
  - search "duplicate" and set
    - Duplicate Selection to `CTRL` + `SHIFT` + `D`

#### Misc

- <mark>Step 5</mark>: in an R console (e.g. in Rstudio), run  
  `remotes::install_github("openHPI/codeoceanR")`  
  Ignore the Rtools warning.  
  For issues (like the system libraries on Linux), see these [solutions](https://github.com/openHPI/codeoceanR#issues).  
- <mark>Step 6</mark>: For a more concise view of the python exercises in VScode,  
  you can press `CTRL` + `SHIFT` + `P` or `CTRL` + `,` and search "files: exclude" and add
  - **/\_\_pycache__
  - **/.co
  - **/score.py
- <mark>Step 7</mark>: switching between REPL and full scoring:
  - Set the keyboard shortcut (Step 4f) to "Run Python File in **Dedicated** Terminal". 
    It's not yet perfect, see [discussion](https://github.com/microsoft/vscode-python/discussions/25563).
  - `CTRL` + `ENTER` sends the selection (from any script in any folder) to one terminal
  - `CTRL` + `SHIFT` + `S` saves and runs the entire script in a separate terminal (including the scoring call)
  - `CTRL` + `ENTER` then steps back into the first terminal
  - To import files in REPL, use   
    `import os`  
    `if not os.getenv("CODEOCEAN")=="true": os.chdir("FP_P14_Importing")`
  - Do not use this for scoring - that is folder specific and much faster with `CTRL` + `SHIFT` + `S`
- <mark>Step 8</mark>: housekeeping:
  - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
  - on Mac: in any Finder folder, press `CMD` + `Shift` + `.` to  show hidden files

You made it through! 🎉  
Now you're set up for the rest of the course (and beyond).

*Again: improvements to this guide are very welcome!*
