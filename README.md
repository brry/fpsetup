### Software installation guide

**for the [course](https://brry.github.io/course/) 'Fundamentals of Programming'**

We want to

- mix Python and R code in quarto markdown documents (more in lesson i.2)
- try two IDEs to find out what we like about each
- have our exercises scored from within our IDEs (more in lesson i.3)

so we have a lot of software to install.  
It's a bit much at once, but it will be worth it!  

*Note: update __existing__ installations of the IDEs!*  
*Tip: Mousewheel click or CTRL/CMD + click opens a __link in a new tab__.*  
*On __Linux__? Usually follow the MacOS instructions.*  
*Here for __R only__? Skip step 3 and 4.*  

Any improvements to this guide are very welcome!  

Jump to [R](#r), [Git](#git), [Python](#python), [VScode](#vscode), [Quarto](#quarto), [Exercises](#exercises), [Misc](#misc)

- <mark>Step 0</mark>: track setup duration:  
  - Write down the time you're starting this guide.
  - At the end, tell Berry how long the installation took you.

#### R

*Why: R is a popular programming language for data science,*
*RStudio simplifies code development. Both will also be used for the rest of the setup.*

- <mark>Step 1a</mark>: install R:
  - Install [R + RStudio](https://brry.github.io/course/install.html).
  - Open RStudio and change the Rdata settings as instructed in the previous link.
  - Add RStudio to the taskbar/dock if wanted.
- <mark>Step 1b</mark>: check R:
  - Check if R is on the [PATH](https://brry.github.io/course/path.html)
  - and has a version > 4.3.x.
- <mark>Step 1c</mark>: set keyboard shortcut to wrap long lines if wanted:
  - tools - modify keyboard shortcuts - filter for "wrap" and set
  - "toggle soft wrap mode" to e.g. `ALT` + `W` (Windows) or `control` + `W` (Mac)

#### Git

*Why: git tracks versions of your work and downloads materials*
*(like this course repo), so you can get and update them easily.*
*Through github, you can also publish presentations, documents and websites.*

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
  - Make sure the project in the RStudio topright shows "fpsetup"
- <mark>Step 2d</mark>: install R packages:   
  - In the now opened Rstudio instance with `fpsetup` in the topright,
  - use the Files pane (bottom right) to open the file *`2d_install_Rpackages.R`*.
  - Run it as instructed inside.
  - Keep Rstudio opened for step 3c.

**From now on, keyboard shortcuts with `CTRL` mean `CMD` on MacOS.**

#### Python

*Why: Python is a generic programming language also used in data science.*
*We'll install it in an isolated virtual environment, so it works reliably.*

- <mark>Step 3a</mark>: install Python with `uv` (very fast & easy Python package manager):
  - *optional*: ask [claude.ai](https://claude.ai/): *give me step by step instructions to find and remove all python installations and environments on my OS for a clean slate.*
  - Install [uv](https://docs.astral.sh/uv/getting-started/installation/) (scroll down for `brew` and other options).
  - Close your terminal and open a new one (see step 1b).
- <mark>Step 3b</mark>: in the terminal, set your directory:
  - Use Tab for autocomplete or drag the folder into the terminal after typing "`cd  `":
  - `cd your/path/to/FundamentalsProgramming/fpsetup`  
  - *Tip: triple click to mark a full line for copying to the clipboard*  
  - Depending on OS, (maybe with `zsh` instead of `bash` on MacOS), run **one** of:  
    - `bash 3b_install_python_mac.sh`
    - `powershell -ExecutionPolicy Bypass -File 3b_install_python_windows.ps1`  
- <mark>Step 3c</mark>: instruct RStudio to use the venv:
  - In RStudio, open and run the file *`3c_set_python_rstudio.R`* as instructed inside.
- <mark>Step 3d</mark>: check Python scripts in RStudio:
  - In RStudio, open and run the file *`3d_check_python_rstudio.py`* as instructed inside.

#### VScode

*Why: VScode is is widely used for Python.*
*Comparing it with RStudio helps you find out what you like in each.*

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
  - Set each wanted shortcut, then deal with duplications later if ever needed 
    (rightclick -> "show same keybindings", remove the interfering one).
  - *Search for the action with an abbreviation like "python run" or "toggle comment":*

| Action | Shortcut |
|--------|----------|
| Python: Run Selection/Line in Python Terminal | `CTRL` + `ENTER` |
| Python: Run Python File in Terminal | `CTRL` + `SHIFT` + `S` |
| Toggle Line Comment  *and*<br>Toggle Block Comment | `CTRL` + `SHIFT` + `C` |
| Delete Line | `CTRL` + `D` |
| Duplicate Selection | `CTRL` + `SHIFT` + `D` |
| Tasks: Run Task (from step 4b) | change if wanted |

- <mark>Step 4e</mark>: *optional on MacOS*: re-open last workspace after closing:
  - Close VScode with `CMD` + `Q` instead of the red X to preserve the opened session.
  - If you did close the window, press `CMD` + `R` and pick the recent workspace.

#### Quarto

*Why: Quarto lets us mix text, R code and Python code in one document.*
*It enables you to hassle-free & reprodicibly generate reports or presentations.*
*These steps check that rendering works in both IDEs and with both languages.*

- <mark>Step 5</mark>: render quarto markdown scripts as instructed inside:
  - In **VScode**, open *`fpsetup/5a_quarto_vscode.qmd`*
  - In **RStudio**, open *`fpsetup/5b_quarto_rstudio.qmd`*
  - In **RStudio**, open *`fpsetup/5c_quarto_python_rstudio.qmd`*


#### Exercises

*Why: In this course, you'll learn most from programming exercises.*
*They are autograded - you can get automatic feedback on your solutions.*
*With this setup, you can solve + score them within your IDE.*

- <mark>Step 6a</mark>: prepare exercise scoring:
  - *Only for Windows OS; can be skipped for the course, but might be needed later:*
  - Install [RTools](https://cran.r-project.org/bin/windows/Rtools/) 
  directly at `C:/rtools45` (compiler paths may not have spaces).
- <mark>Step 6b</mark>: install scoring package:
  - In RStudio, open *`fpsetup/6b_setup_scoring.R`* and run it as instructed inside.
- <mark>Step 6c</mark>: disable automatic unzipping:
  - *Only for Mac OS in the safari browser:*
  - Go to Safari -> Settings -> General and uncheck "Open safe files after downloading"
- <mark>Step 6d</mark>: close REPL with keyboard shortcut:
  - *`CTRL` + `D` (also control on Mac this time) closes a REPL in the terminal,*
    *without navigating there and typing `quit()` + ENTER.*
    *To also enable this when the cursor focus is in the editor:*
  - Press `CTRL` + `K` + `S`
  - In the topright, click the left button "open Keyboard shortcuts (JSON)"
  - Add the following:

```json
{
"key": "ctrl+d",
"command": "workbench.action.terminal.sendSequence",
"args": {"text":"\u0004"},
"when": "editorTextFocus && editorLangId == python"
},
```


#### Misc

*Why: a few various things will improve your file folder experience.*
*Feedback helps improve this guide for future students.*

- <mark>Step 7a</mark>: actually hide hidden files in RStudio:
  - In RStudio, open and run the file *`fpsetup/7a_hide_files_rstudio.R`* 
- <mark>Step 7b</mark>: change OS file browser settings: 
  - In case you do still use your OS file browser sometimes:
    - on Windows: in the File explorer, click the "View" tab , then "Show" and check the boxes for "File name extensions" and "Hidden items"
    - on Mac: in any Finder folder, press `CMD` + `Shift` + `.` to  show hidden files
- <mark>Step 7c</mark>: send feedback: 
  - Note the current time and send the setup duration to Berry
  - Suggest improvements to this guide if you have any :)

You made it through! 🎉  
Now you're set up for the rest of the course - and beyond!  

Head to the [course](https://brry.github.io/course/) to get started with lesson i.2 on git and quarto.
