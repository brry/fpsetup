# This script instructs RStudio to actually hide hidden files in the Files pane
# when "Show hidden files" is toggled off (dotfiles like .Rproj.user, .git, .venv).
# See https://docs.posit.co/ide/server-pro/admin/reference/session_user_settings.html

# Run this script with the Source button or with `CTRL` + `SHIFT` + `S`

p_path <- switch(Sys.info()[["sysname"]],
  Windows = file.path(Sys.getenv("APPDATA"), "RStudio", "rstudio-prefs.json"),
            "~/.config/rstudio/rstudio-prefs.json"  # Mac + Linux
)
p_path <- berryFunctions::normalizePathCP(p_path)
if(!dir.exists(dirname(p_path)))
	dir.create(dirname(p_path), recursive=TRUE)

p_new <- list(
  always_shown_extensions = list(),
  always_shown_files      = list()
)
# merge with any existing prefs so nothing is overwritten:
p_old <- if(file.exists(p_path)) jsonlite::read_json(p_path) else list()
p_final <- utils::modifyList(p_old, p_new)
jsonlite::write_json(p_final, p_path, pretty=TRUE, auto_unbox=TRUE)
message("NOTE: RStudio prefs written to: ", p_path,
		"\nRestart RStudio to activate this setting.",
		"\nThen continue in step 7b.")
