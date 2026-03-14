# put this script in your main exercise folder
# run it with VScode execin setting: execute in file dir

# unzip, then delete (yet zipped) exercise folders
# then delete unnecessary files
import zipfile, shutil, pathlib as p
for zf in p.Path.cwd().glob("*.zip"):
    folder = p.Path(zf.stem)
    zipfile.ZipFile(zf).extractall(folder)
    zf.unlink()
    (folder/"Exercise.txt").unlink()
    shutil.rmtree(folder/".scripts")
    print("unzipped", zf)
