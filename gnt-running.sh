#!/bin/sh -e
while true ; do
  JOBID=`gnt-job list --no-headers --running | tee /dev/stderr | awk '{ print $1; exit }'`
  if [ -n "$JOBID" ]
  then
	gnt-job watch $JOBID
  else
	sleep 5
  fi
done
