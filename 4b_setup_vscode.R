# This script sets up VScode for the course from within RStudio.
# For a clickable TOC outline, press `CTRL` + `SHIFT` + `O`

# Run this script with the Source button or with `CTRL` + `SHIFT` + `S`
# Check if all the NOTE: messages make sense.

# 0: Check path ----

if(!dir.exists("../fpsetup")) stop(
  "Please run this script from your main_course_folder/fpsetup/.\n",
  "make sure you're in the fpsetup project from 2d.")
message("NOTE: this is your main course directory: ", dirname(getwd()))


# 1: install extensions ----

if(nchar(Sys.which("code")) == 0) stop( # check that `code` CLI is available
  "The `code` command is not on your PATH.\n",
  "In VScode: press CTRL+SHIFT+P, search 'Shell Command: Install code command in PATH', run it,\n",
  "then restart RStudio and re-run this script."
)
extensions <- c(
  "ms-python.python",
  "reditorsupport.r",
  "quarto.quarto"
)
for(ext in extensions) {
  message("Installing extension: ", ext)
  system(paste("code --install-extension", ext, "--force"))
}


# 2: global settings ----

g_path <- switch(Sys.info()[["sysname"]],
  Windows = file.path(Sys.getenv("APPDATA"), "Code", "User", "settings.json"),
  Darwin  = "~/Library/Application Support/Code/User/settings.json",
            "~/.config/Code/User/settings.json"  # Linux
)
g_path <- berryFunctions::normalizePathCP(g_path)
if(!dir.exists(dirname(g_path)))
	dir.create(dirname(g_path), recursive=TRUE)

g_new <- list(
  `python.terminal.executeInFileDir`      = TRUE,
  `workbench.editor.enablePreview`        = FALSE,
  `telemetry.telemetryLevel`              = "off", # https://www.roboleary.net/tools/2022/04/20/vscode-telemetry.html
  `files.exclude` = list(`**/__pycache__` = TRUE, # for a more concise view of the python exercises
                          `**/.co`        = TRUE)
)
# merge with any existing settings so nothing is overwritten:
g_old <- if(file.exists(g_path)) jsonlite::read_json(g_path) else list()
g_final <- utils::modifyList(g_old, g_new)
jsonlite::write_json(g_final, g_path, pretty=TRUE, auto_unbox=TRUE)
message("NOTE: VScode global settings written to: ", g_path)

# crash reporter (see telemetry link above):
argv_path <- file.path(dirname(g_path), "argv.json")
argv <- if (file.exists(argv_path)) jsonlite::read_json(argv_path) else list()
argv[["enable-crash-reporter"]] <- FALSE
jsonlite::write_json(argv, argv_path, pretty=TRUE, auto_unbox=TRUE)
message("NOTE: crash reporter disabled in argv.json")


# 3: local settings ----

# write workspace-level Python interpreter path:
python_path <- reticulate::py_discover_config()$python
if(is.null(python_path) || !nzchar(python_path)) stop(
  "Could not detect Python via reticulate.\n",
  "Make sure you have completed step 3c and restarted RStudio."
)
if(!dir.exists("../.vscode")) dir.create("../.vscode")
l_path <- "../.vscode/settings.json"
l_path <- berryFunctions::normalizePathCP(l_path)
l_final <- if(file.exists(l_path)) jsonlite::read_json(l_path) else list()
l_final[["python.defaultInterpreterPath"]] <- python_path
jsonlite::write_json(l_final, l_path, pretty=TRUE, auto_unbox=TRUE)
message("NOTE: local settings in: ", dirname(l_path))
message("NOTE: Python interpreter locally set to: ", python_path)


# 4: CRAN mirror ----

# permanently set the download mirror for R packages:
rprofile <- "~/.Rprofile"
mirror_line <- 'options(repos=c(CRAN="https://cloud.r-project.org/"))'
existing_lines <- if(file.exists(rprofile)) readr::read_lines(rprofile) else character(0)
if(!any(grepl("repos", existing_lines))) {
  readr::write_lines(mirror_line, rprofile, append=TRUE)
  message("NOTE: CRAN mirror added to ~/.Rprofile")
} else
  message("NOTE: CRAN mirror already set in ~/.Rprofile, nothing changed.")


# 5: scoring files ----

# copy exercise scoring files to the main course folder:
t_path <- "../.vscode/tasks.json"
file.copy("scriptunzip.py", "../scriptunzip.py")
file.copy("key_score.py",   "../key_score.py")
file.copy("tasks.json",     t_path)
# Note: in .vscode/tasks.json, set "clear": false to see previous scoring runs in the dedicated terminal
message("NOTE: exercise scoring files copied successfully.")

# set python interpreter for the scoring task:
t_final <- jsonlite::read_json(t_path)
t_final$tasks[[1]]$command <- paste0('"', python_path, '" ../key_score.py')
jsonlite::write_json(t_final, t_path, pretty=TRUE, auto_unbox=TRUE)
message("NOTE: Python interpreter for scoring task set to: ", python_path)


# 6: scoring keybinding ----

k_path <- file.path(dirname(g_path), "keybindings.json")
mod_key <- if(Sys.info()[["sysname"]] == "Darwin") "cmd" else "ctrl"
k_new <- list(key     = paste0(mod_key, "+shift+y"),
              command = "workbench.action.tasks.runTask",
              args    = "score")
k_old <- if(file.exists(k_path)) jsonlite::read_json(k_path) else list()
# check if score already exists:
k_exists <- any(sapply(k_old, function(x) identical(x$args, "score")))
if(!k_exists){
  k_final <- c(k_old, list(k_new))
  jsonlite::write_json(k_final, k_path, pretty=TRUE, auto_unbox=TRUE)
  message("NOTE: score keybinding (", mod_key, "+shift+y) added to ",k_path,".")
  } else 
  message("NOTE: score keybinding already present in ",k_path,".")
message("NOTE: if you want to change the keybinding, do so in step 4d.")

message("\nAll done! Now:")
message("  - Reload VScode (CTRL+SHIFT+P > 'Reload Window') to activate extensions and settings.")
message("  - Continue with step 4c to verify Python files can be run in VScode.")
