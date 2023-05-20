#!/bin/bash
cmd=$(rm -f $1.err)
cob -g -Cautolock -Cfileshare $1.cbl 2>$1.err
if [ $? -eq 0 ]; then
   mv $1.int /d/exec/
   mv $1.idy /d/exec/
   rm -f $1.err
else
   cat $1.err
   rm -f $1.idy
fi