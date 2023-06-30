
datedir=$1
camdir=$2
usr=$3
pwd=$4
url=$5

dirs=`curl -u ${usr}:${pwd} "${url}/sd/${datedir}/" | grep '/</a>' | awk -F\> '{print $4}' | sed 's|/</a||'`

for dir in `echo ${dirs}`
do
  if (echo ${dir} | grep 'images')
  then
    outdir=${camdir}/${datedir}/images
  else
    outdir=${camdir}/${datedir}/record
  fi
  echo ${outdir}
  mkdir -p ${outdir}
  cd ${outdir}
  files=`curl -u ${usr}:${pwd} "${url}/sd/${datedir}/${dir}/" | grep '</a>' | awk -F\> '{print $4}' | sed 's|</a||' | grep -v 'title'`
  echo ${files}
  for file in `echo ${files}`
  do
    echo ${file}
    curl -O -u ${usr}:${pwd} "${url}/sd/${datedir}/${dir}/${file}"
  done
done
