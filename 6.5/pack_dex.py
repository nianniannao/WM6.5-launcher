import sys, zipfile, os
out = sys.argv[1]
src = os.path.join(out, "unsigned.apk")
dst = os.path.join(out, "aligned.apk")
with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst, "w", zipfile.ZIP_DEFLATED) as zout:
    for item in zin.infolist():
        zout.writestr(item, zin.read(item.filename))
    zout.write(os.path.join(out, "dex", "classes.dex"), "classes.dex")
print("dex added")