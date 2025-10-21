### Software installation guide

**for the course 'Fundamentals of Programming'**

We want to  

- mix Python and R code in quarto markdown documents (more in lesson I1.5)
- try two IDEs to find out what we like about each
- have our exercises scored from within our IDEs (more in lesson I1.3)

so we have a lot of software to install. It may be a bit tedious, but it will be worth it!  

Any improvements to the guide are very welcome!

- <mark>Step 1a</mark>: install [R + Rstudio](https://bookdown.org/brry/course/install.html), including the Rdata settings
- <kbd>Step 1b</kbd>: check if R is on the PATH (locations where executables are found):  
  - in your OS, search (Windows: `Windows key`. Mac: `CMD`+`SPACE`) for "**Terminal**" (a.k.a. console, shell, bash, cmd)  
  - run the command `R` (Windows Powershell: `R.exe`) - check if it's a recent version, quit with `q("no")`
  - if R is not found / recognized, add it to the _system_ (not user) PATH:
    - copy the path where you installed R  -  or  - in Rstudio -> Tools -> Global Options, copy the path (e.g. `C:\Program Files\R\R-4.5.1)` 
    - search (`Windows key`)  for "env", click "Edit the system environment variables", then "Environment Variables" ([guide with images](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/))
    - under "**System** Variables" double click on "Path"
    - click "New" and copy-paste your installation location (if from Rstudio, add `\bin` at the end)
    - close the variable windows + the terminal, open a new one and try `R`/`R.exe` again.  
      Potentially restart Windows inbetween.

 ~

- <span style="background-color:aquamarine">Step 2a</span>: install [git](https://bookdown.org/brry/course/git.html), including the SSH key setup.  
  If you already have a personal github account, use that :)
- <span style="background-color:palegreen">Step 2b</span>: follow the [use git](https://bookdown.org/brry/course/git.html#use-git) section to download these instructions
- <span style="background-color:palegreen">Step 2c</span>: run `setup_Rpackages.R`. Tip: Use the Files pane (Rstudio bottom right) to select and open the file.

~

- <span style="background-color:aquamarine">Step 3a</span>: install Python with one of
  - standalone installation: [Python](https://www.python.org/downloads/), hints on [Windows](https://docs.python.org/using/windows.html)
  - installation from R (way easier, especially on Mac): run `setup_Python.R` line by line
- <span style="background-color:palegreen">Step 3b</span>: install Python modules:
  - on Windows / if you use the system Python, run in the terminal:  
    `pip install numpy pandas matplotlib` (pip3 instead of pip on Mac)
  - else, in an R console (e.g. in Rstudio), run  
    `reticulate::py_install(c("numpy", "pandas", "matplotlib"))`
- <span style="background-color:palegreen">Step 3c</span>: run `check_python_setup.py` (`CTRL`/`CMD`+`SHIFT`+`S`)

~

- <span style="background-color:aquamarine">Step 4a</span>: install [VScode](https://code.visualstudio.com/Download)  
  When prompted: manage restricted mode - add folder, click 'trust'
- <span style="background-color:palegreen">Step 4b</span>: disable [telemetry](https://www.roboleary.net/tools/2022/04/20/vscode-telemetry.html) if you don't want to send data to Micro$oft
- <span style="background-color:palegreen">Step 4c</span>: run R scripts in VScode:
  - open (`CTRL`+`O` or Explorer Tab `CTRL`+`SHIFT`+`E`) the file `setup_cran_mirror.R`
  - install the R extension when prompted (or manually under Extensions (`CTRL`/`CMD`+`SHIFT`+`X`))
  - run the file
  - edit and save the Rprofile file
- <span style="background-color:palegreen">Step 4d</span>: run Python scripts in VScode:
  - open `check_python_setup.py`
  - install the Python extension when prompted (or manually)
  - open the Settings (`CTRL`+`,`), search 'execin', check the box for `Python > Terminal: execute in file dir` ([Source](https://stackoverflow.com/a/65835091))
  - now run `check_python_setup.py` (if errors are raised, go back to Step 3b)
- <span style="background-color:palegreen">Step 4e</span>: run qmd scripts in VScode:
  - open `check_quarto.qmd` 
  - install the Quarto extension when prompted (or manually)
  - render (a.k.a. compile) `check_quarto.qmd` as instructed inside

~

- <span style="background-color:aquamarine">Step 5</span>: in an R console (e.g. in Rstudio), run `remotes::install_github("openHPI/codeoceanR")`  
  Ignore the Rtools warning.  
  If you encounter issues, see these [solutions](https://github.com/openHPI/codeoceanR#issues).
- <span style="background-color:aquamarine">Step 6</span>: housekeeping:
  - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
  - on Mac: in any Finder folder, press `Command`+`Shift`+`.` to  show hidden files
