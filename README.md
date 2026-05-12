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

Any improvements to this guide are very welcome!  
So is feedback on how long this all takes for you!  

Jump to [R](#r), [Git](#git), [Python](#python), [VScode](#vscode), [Quarto](#quarto), [Exercises](#exercises), [Misc](#misc)

#### R

- <mark>Step 1a</mark>: install [R + RStudio](https://brry.github.io/course/install.html), change the Rdata settings, add Rstudio to taskbar/dock if wanted
- <mark>Step 1b</mark>: check if R is on the [PATH](https://brry.github.io/course/path.html)
  and has a version > 4.3.x.

#### Git

- <mark>Step 2a</mark>: in a sensible (easy to reach) location on your computer, 
create a folder for this course. Use a short expressive name like `FundamentalsProgramming`.
This will over time contain the folders *`fpsetup`* and *`FP26`*, along with the 
exercise folders *`FP_P11_Syntax`*, *`FP_P12_DataTypes`* etc, *`FP_R12_Syntax`*, *`FP_R13_Help`* etc.
- <mark>Step 2b</mark>: install [git](https://brry.github.io/course/git.html), including the SSH key setup.  
  If you already have a personal github account, use that :)
- <mark>Step 2c</mark>: follow the [use git](https://brry.github.io/course/git.html#use-git) 
section to download [these instructions](https://github.com/brry/fpsetup) into your main course folder from step 2a.
- <mark>Step 2d</mark>: run *`2d_install_Rpackages.R`*. Tip: Use the Files pane (RStudio bottom right) to select and open the file.

**From now on, keyboard shortcuts with `CTRL` mean `CMD` on MacOS.**

#### Python

- <mark>Step 3a</mark>: install Python with `uv` (very fast & easy Python package manager)
  - install [uv](https://docs.astral.sh/uv/getting-started/installation/) (scroll down for `brew` and other options)
  - close your terminal and open a new one (see step 1b)
- <mark>Step 3b</mark>: in the terminal, set your directory (use Tab for autocomplete or drag the folder into the terminal):  
  `cd your/path/to/FundamentalsProgramming/fpsetup`  
  then run **one** of (depending on OS; maybe with `zsh` instead of `bash` on MacOS):  
  `bash 3b_install_python_mac.sh`  
  `powershell -ExecutionPolicy Bypass -File 3b_install_python_windows.ps1`  
- <mark>Step 3c</mark>: instruct RStudio to use the venv:
  - run *`3c_set_python_rstudio.R`* in RStudio as instructed inside.
- <mark>Step 3d</mark>: check Python in RStudio:
  - run *`3d_check_python_rstudio.py`* in RStudio as instructed inside.

#### VScode

- <mark>Step 4a</mark>: install [VScode](https://code.visualstudio.com/Download), add to taskbar/dock if wanted, then  
  - in the Explorer Tab `CTRL` + `SHIFT` + `E`, open the main course folder from step 2a.
  - when prompted, click "trust" (add other folders under "manage restricted mode")
  - open the settings (`CTRL` + `,`), search "workbench editor enable preview" and uncheck the box
- <mark>Step 4b</mark>: disable [telemetry](https://www.roboleary.net/tools/2022/04/20/vscode-telemetry.html) if you don't want to send data to Micro$oft:
  - open the Settings (`CTRL` + `,`), search "Telemetry level", set to "off"
  - open the Command Palette (`CTRL` + `SHIFT` + `P`), search "Configure Runtime Arguments" and in the argv.json file, change the value for "enable-crash-reporter" to false, restart VScode
- <mark>Step 4c</mark>: run R scripts in VScode:
  - *(to signify you should be in the main course folder, `fpsetup/` is prepended to the script names)*
  - open the file *`fpsetup/4c_set_cran_mirror.R`* (Explorer Tab `CTRL` + `SHIFT` + `E`)
  - follow the instructions inside
- <mark>Step 4d</mark>: run Python scripts in VScode:
  - open *`fpsetup/4d_check_python_vscode.py`* (don't run it yet)
  - follow the instructions inside step by step

#### Quarto

- <mark>Step 5</mark>: run quarto markdown scripts as instructed inside:
  - open *`fpsetup/5a_quarto_vscode.qmd`* in **VScode**
  - open *`fpsetup/5b_quarto_rstudio.qmd`* in **RStudio**
  - open *`fpsetup/5c_quarto_python_rstudio.qmd`* in **RStudio**


#### Exercises

- <mark>Step 6a</mark>: on Windows, install [RTools](https://cran.r-project.org/bin/windows/Rtools/) 
  directly at `C:/rtools45` (compiler paths may not have spaces).
- <mark>Step 6b</mark>: run *`fpsetup/6b_setup_scoring.R`* in Rstudio
- <mark>Step 6c</mark>: for scoring exercises in VScode, run *`fpsetup/6c_set_scoring_keybinding.py`*
  (change keybinding first if wanted)


#### Misc

- <mark>Step 7</mark>: housekeeping:
  - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
  - on Mac: in any Finder folder, press `CMD` + `Shift` + `.` to  show hidden files

You made it through! 🎉  
Now you're set up for the rest of the course (and beyond).  
Head to the [course](https://brry.github.io/course/) to get started with lesson i.1.

*Again: improvements to this guide are very welcome!*
