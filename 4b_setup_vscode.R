# This script sets up VScode for the course from within RStudio.
# For a clickable TOC outline, press `CTRL` + `SHIFT` + `O`

# Run this script with the Source button or with `CTRL` + `SHIFT` + `S`
# Check if all the NOTE: messages make sense.

# 0: Check path ----

setwd("..") # go up one level to main course folder
if(!dir.exists("fpsetup")) stop(
  "Please run this script from the main course folder containing fpsetup/.\n",
  "make sure you're in the fpsetup project from 2d.")
message("NOTE: this is your main course directory: ", getwd())


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
  `files.exclude` = list(`**/__pycache__` = TRUE,
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

# write workspace-level Python interpreter path
python_path <- reticulate::py_discover_config()$python
if(is.null(python_path) || !nzchar(python_path)) stop(
  "Could not detect Python via reticulate.\n",
  "Make sure you have completed step 3c and restarted RStudio."
)
l_path <- ".vscode/settings.json"
dir.create(".vscode", showWarnings=FALSE)
l_final <- if(file.exists(l_path)) jsonlite::read_json(l_path) else list()
l_final[["python.defaultInterpreterPath"]] <- python_path
jsonlite::write_json(l_final, l_path, pretty=TRUE, auto_unbox=TRUE)
message("NOTE: Python interpreter locally set to: ", python_path)


# 4: CRAN mirror ----

# permanently set the download mirror for R packages
rprofile <- "~/.Rprofile"
mirror_line <- 'options(repos=c(CRAN="https://cloud.r-project.org/"))'
existing_lines <- if(file.exists(rprofile)) readr::read_lines(rprofile) else character(0)
if(!any(grepl("repos", existing_lines))) {
  readr::write_lines(mirror_line, rprofile, append=TRUE)
  message("NOTE: CRAN mirror added to ~/.Rprofile")
} else {
  message("NOTE: CRAN mirror already set in ~/.Rprofile, nothing changed.")
}

message("\nAll done! Now:")
message("  - Reload VScode (CTRL+SHIFT+P > 'Reload Window') to activate extensions and settings.")
message("  - Continue with step 4c to verify Python files can be run in VScode.")
