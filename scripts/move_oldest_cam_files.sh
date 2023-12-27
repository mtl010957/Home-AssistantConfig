#!/bin/bash

camdir=$1
backupcamdir=$2

oldestdate=`ls -rt ${camdir} | head -n1`

if [ -d ${backupcamdir} ]
then
  echo "Moving ${camdir}/${oldestdate} to ${backupcamdir}..."
  mv -f ${camdir}/${oldestdate} ${backupcamdir}
  echo "Done Moving ${camdir}/${oldestdate}"
fi
