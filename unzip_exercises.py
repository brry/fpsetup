# this script should be in your main exercise folder
# run it with VScode execin setting: execute in file dir

# unzip, then delete original zipfile and unnecessary files
import zipfile, shutil, pathlib as p
for zf in p.Path.cwd().glob("FP_*.zip"):
    folder = p.Path(zf.stem)
    zipfile.ZipFile(zf).extractall(folder)
    zf.unlink()
    (folder/"Exercise.txt").unlink()
    shutil.rmtree(folder/".scripts")
    print("- unzipped", zf)
print("If not done already, close all browser tabs with CodeOcean exercises.")
