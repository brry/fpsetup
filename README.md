

### Software installation guide

**for the course ‘Fundamentals of Programming’**

- <span style="background-color:aquamarine">Step 1a</span>: install [R +
  Rstudio](https://bookdown.org/brry/course/install.html), including the
  Rdata settings
- <span style="background-color:aquamarine">Step 1b</span>: check if R
  is on the PATH (locations where executables are found):
  - in your OS, search (Windows: `Windows key`. Mac: `CMD` + `SPACE`)
    for “**Terminal**” (a.k.a console, shell, bash, cmd)  
  - run the command `R` (Windows Powershell: `R.exe`) - check if it’s a
    recent version, quit with `q("no")`
  - if R is not found / recognized, add it to the *system* (not user)
    PATH:
    <details>

    <summary>

    click for instructions
    </summary>

    - copy the path where you installed R - or - in Rstudio -\> Tools
      -\> Global Options, copy the path
      (e.g. `C:\Program Files\R\R-4.5.1)`
    - search (`Windows key`) for “env”, click “Edit the system
      environment variables”, then “Environment Variables” ([guide with
      images](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/))
    - under “**System** Variables” double click on “Path”
    - click “New” and copy-paste your installation location (if from
      Rstudio, add `\bin` at the end)

    </details>
- <span style="background-color:aquamarine">Step 2a</span>: install
  [git](https://bookdown.org/brry/course/git.html), including the SSH
  key  
- <span style="background-color:aquamarine">Step 2b</span>: follow the
  [use git](https://bookdown.org/brry/course/git.html#use-git) section
  to download these instructions (with the scripts to come)
- codeoceanR (short + issues)
- VScode extensions
- Python packages
- Windows R not found PATH + link
- Windows show file extensions
- Mac show hidden files Command+Shift+Dot
- vs_code_setup.r
- little python script to see if importing modules works
- VScode issues from 1.3 exercises
