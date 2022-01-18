#! /bin/bash
rm latest_30d/*.mp4
for file in `find 2* -name \*.mp4 -mtime -30 -print`
do
  echo ${file}
  ln -s ../${file} latest_30d/`basename ${file}`
done