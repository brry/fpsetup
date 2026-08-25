### Software installation guide

**for the [course](https://brry.github.io/course/) 'Fundamentals of Programming'**

We want to

- mix Python and R code in quarto markdown documents (more in lesson i.2)
- try two IDEs to find out what we like about each
- have our exercises scored from within our IDEs (more in lesson i.3)

so we have a lot of software to install.  
It's a bit much at once, but it will be worth it!  

*Note: on Linux, usually follow the MacOS instructions.*  
*Tip: triple click to mark a full line for copying to the clipboard.*  
*Here for R only? Step 1a + 2a is enough. I do recommend step 2 and 5 as well!*  

Any improvements to this guide are very welcome!  

Jump to [R](#r), [Git](#git), [Python](#python), [VScode](#vscode), [Quarto](#quarto), [Exercises](#exercises), [Misc](#misc)

- <mark>Step 0</mark>: track setup duration:  
  - Write down the time you're starting this guide.
  - At the end, tell Berry how long the installation took you.

#### R

- <mark>Step 1a</mark>: install R:
  - Install [R + RStudio](https://brry.github.io/course/install.html).
  - Open RStudio and change the Rdata settings as instructed in the previous link.
  - Add RStudio to the taskbar/dock if wanted.
- <mark>Step 1b</mark>: check R:
  - Check if R is on the [PATH](https://brry.github.io/course/path.html)
  - and has a version > 4.3.x.

#### Git

- <mark>Step 2a</mark>: create a course folder:
  - In a sensible (easy to reach) location on your computer, create a folder for this course.
  - Use a short expressive name without spaces like `FundamentalsProgramming`!
  - This will over time contain the folders *`fpsetup`* and *`FP26`*, along with the 
    exercise folders *`FP_P11_Syntax`*, *`FP_P12_DataTypes`* etc, *`FP_R12_Syntax`*, *`FP_R13_Help`* etc.
  - Except in step 3b, you do not need your OS file explorer anymore - use the file panel in your IDE!
- <mark>Step 2b</mark>: install git for version control:
  - Install [git](https://brry.github.io/course/git.html), including the SSH key setup.  
  - If you already have a personal github account, use that :)
- <mark>Step 2c</mark>: download this fpsetup repo:
  - Follow the [use git](https://brry.github.io/course/git.html#use-git) 
    section to download [these instructions](https://github.com/brry/fpsetup) 
    into your main course folder from step 2a.
- <mark>Step 2d</mark>: install R packages:   
  - In the now opened Rstudio instance with `fpsetup` in the topright,
  - use the Files pane (bottom right) to open the file *`2d_install_Rpackages.R`*.
  - Run it as instructed inside.
  - Keep Rstudio opened for step 3c.

**From now on, keyboard shortcuts with `CTRL` mean `CMD` on MacOS.**

#### Python

- <mark>Step 3a</mark>: install Python with `uv` (very fast & easy Python package manager):
  - Install [uv](https://docs.astral.sh/uv/getting-started/installation/) (scroll down for `brew` and other options).
  - Close your terminal and open a new one (see step 1b).
- <mark>Step 3b</mark>: in the terminal, set your directory:
  - Use Tab for autocomplete or drag the folder into the terminal after typing "`cd  `":
  - `cd your/path/to/FundamentalsProgramming/fpsetup`  
  - Depending on OS, (maybe with `zsh` instead of `bash` on MacOS), run **one** of:  
  `bash 3b_install_python_mac.sh`  
  `powershell -ExecutionPolicy Bypass -File 3b_install_python_windows.ps1`  
- <mark>Step 3c</mark>: instruct RStudio to use the venv:
  - In RStudio, open and run the file *`3c_set_python_rstudio.R`* as instructed inside.
- <mark>Step 3d</mark>: check Python scripts in RStudio:
  - In RStudio, open and run the file *`3d_check_python_rstudio.py`* as instructed inside.

#### VScode

- <mark>Step 4a</mark>: install VScode:
  - Install [VScode](https://code.visualstudio.com/Download) and open it.
  - Add it to the taskbar/dock if wanted.
  - Open the Explorer Tab with `CTRL` + `SHIFT` + `E`, open the main course folder from step 2a.
  - When prompted, click "trust".
  - *(To signify you should be in the main course folder, `fpsetup/` is prepended to the script names from now on)*
- <mark>Step 4b</mark>: change VScode settings
  - In **RStudio** (to avoid circular dependencies), open and run the file *`4b_setup_vscode.R`*.
- <mark>Step 4c</mark>: check Python scripts in VScode:
  - In VScode, open and run the file *`fpsetup/4c_check_python_vscode.py`*.
- <mark>Step 4d</mark>: *optional*: customize keyboard shortcuts, suggestions as in RStudio.
  - Press `CTRL` + `K` + `S` (or click the cog wheel at the bottom left).
  - Set each wanted shortcut, then rightclick -> "show same keybindings" to deal with duplicates.  
  - Search for the action e.g. with "python run" or "toggle comment".

| Action | Shortcut |
|--------|----------|
| Python: Run Selection/Line in Python Terminal | `CTRL` + `ENTER` |
| Python: Run Python File in Terminal | `CTRL` + `SHIFT` + `S` |
| Toggle Line Comment  *and*<br>Toggle Block Comment | `CTRL` + `SHIFT` + `C` |
| Delete Line | `CTRL` + `D` |
| Duplicate Selection | `CTRL` + `SHIFT` + `D` |
| Tasks: Run Task (from step 4b) | change if wanted |

#### Quarto

- <mark>Step 5</mark>: render quarto markdown scripts as instructed inside:
  - In **VScode**, open *`fpsetup/5a_quarto_vscode.qmd`*
  - In **RStudio**, open *`fpsetup/5b_quarto_rstudio.qmd`*
  - In **RStudio**, open *`fpsetup/5c_quarto_python_rstudio.qmd`*


#### Exercises

- <mark>Step 6a</mark>: prepare exercise scoring:
  - *Only for Windows OS.*
  - *Can be skipped for the course, but might be needed later.*
  - Install [RTools](https://cran.r-project.org/bin/windows/Rtools/) 
  directly at `C:/rtools45` (compiler paths may not have spaces).
- <mark>Step 6b</mark>: install scoring package:
  - In RStudio, open *`fpsetup/6b_setup_scoring.R`* and run it as instructed inside.


#### Misc

- <mark>Step 7</mark>: housekeeping:
  - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
  - on Mac: in any Finder folder, press `CMD` + `Shift` + `.` to  show hidden files
  - Note the current time and send the setup duration to Berry
  - Suggest improvements to this guide if you have any :)

You made it through! 🎉  
Now you're set up for the rest of the course - and beyond!  

Head to the [course](https://brry.github.io/course/) to get started with lesson i.1.
