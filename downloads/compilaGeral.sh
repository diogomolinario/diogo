#!/bin/bash
programas=$(ls -1 *.cbl)
for programa in $programas
do
    prog=$(echo $programa|awk -F ".cbl" '{ print $1 }')
    if [ -f "$prog.cbl" ]; then
       cob -g -Cautolock -Cfileshare $prog.cbl 2>$prog.err
       if [ $? -eq 0 ]; then
          mv $prog.int /d/exec
          mv $prog.idy /d/exec
          rm -f $prog.err
       else
          rm -f $prog.idy
       fi
    fi
done
