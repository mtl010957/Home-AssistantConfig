#! /bin/bash
rm latest_30d/*.jpg
for file in `find 2* -name \*.jpg -mtime -30 -print`
do
  echo ${file}
  ln -s ../${file} latest_30d/`basename ${file}`
done