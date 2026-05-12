"""
This script will:
- copy scriptunzip.py + key_score.py + tasks.json from `fpsetup/` to the main course folder
- add the 'score' keybinding to VScode's keybindings.json
"""

# 1: Make sure to have set execin in step 4d instruction 2.

# 2: Customize keybinding if wanted (change ctrl to cmd on MacOS):
score_binding = {"key": "ctrl+shift+y",   # <-- change here if wanted
                 "command": "workbench.action.tasks.runTask", 
                 "args": "score"}
# Note: in tasks.json, set "clear": false to see previous scoring runs in the dedicated terminal

# 3: Run this script with the play button.
# 4: Check if all NOTE: messages make sense.

# 5: for a more concise view of the python exercises in VScode, 
#    press `CTRL` + `,` and search "files: exclude" and add two entries:
#    **/__pycache__
#    **/.co

# In theory, you don't need to look at the rest of this script :)
                 
import os
import sys
import shutil
import platform
import json

# --- Check folder ---

# execin sets the working directory to the location of this file.
# Go up one level to main course folder:
os.chdir("..") 
if not os.path.isdir("fpsetup"):
    print("Please run this script from the main course folder containing fpsetup/.")
    sys.exit(1)
print("NOTE: this is the main course folder:", os.getcwd())

# --- Copy files to the main course folder ---

os.makedirs(".vscode", exist_ok=True)
shutil.copy2("fpsetup/scriptunzip.py", "scriptunzip.py")
shutil.copy2("fpsetup/key_score.py"  , "key_score.py")
shutil.copy2("fpsetup/tasks.json"    , ".vscode/tasks.json")

print("NOTE: exercise files were copied successfully :)")

system = platform.system()

# --- select python interpreter for task (if venv not activated) ---

home = os.path.expanduser("~")
if system == "Windows":
    venv_python = os.path.join(home, ".venv", "Scripts", "python.exe")
else:
    venv_python = os.path.join(home, ".venv", "bin", "python")
with open(".vscode/tasks.json", "r") as f:
    task_data = json.load(f)
task_data["tasks"][0]["command"] = f'"{venv_python}" ../key_score.py'
with open(".vscode/tasks.json", "w") as f:
    json.dump(task_data, f, indent=2)
print("NOTE: python interpreter for scoring task set to ", venv_python)
# ToDo: this new version venv_python instead of python3 needs to be tested on Mac

# --- find VScode's keybindings.json ---

if system == "Windows":
    kb_path = os.path.join(os.environ.get("APPDATA", ""), "Code", "User", "keybindings.json")
elif system == "Darwin":
    kb_path = os.path.expanduser("~/Library/Application Support/Code/User/keybindings.json")
elif system == "Linux":
    kb_path = os.path.expanduser("~/.config/Code/User/keybindings.json")
else:
    print(f"Unrecognised OS: {system}. Cannot locate keybindings.json automatically.")
    sys.exit(1)

os.makedirs(os.path.dirname(kb_path), exist_ok=True)
if not os.path.exists(kb_path):
    open(kb_path, "w").close()
    print("NOTE: keybindings.json is newly created.")
print("NOTE: this is the Keybindings file:", kb_path)
 
# --- Read existing keybindings ---

with open(kb_path, encoding="utf-8") as f:
    kb_content = "\n".join(l for l in f if not l.lstrip().startswith("//")).strip()
if kb_content:
    try:
        bindings = json.loads(kb_content)
    except json.JSONDecodeError as e:
        print(f"Could not parse {kb_path}:\n  {e}")
        print("Please fix the file manually and re-run this script.")
        sys.exit(1)
else: 
    bindings = []

# --- Add keybinding ---

if not any(b.get("args") == "score" for b in bindings):
    bindings.append(score_binding)
    with open(kb_path, "w", encoding="utf-8") as f:
        json.dump(bindings, f, indent=4)
    print("NOTE: Keybinding added successfully. Reload VScode (CTRL+SHIFT+P > 'Reload Window').")
else:
    print("NOTE: Keybinding already present, nothing changed.")
