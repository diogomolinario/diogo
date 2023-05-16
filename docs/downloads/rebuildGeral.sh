#!/bin/bash
arquivos=$(ls -1 *.idx)
cmd=$(rm -f sai.reb)
for arquivo in $arquivos
do
    arqrebu=$(echo "$arquivo"|awk -F ".idx" '{print $1}')
    rebu=$(rebuild -f "$arqrebu"|grep -i "File is Corrupt")
    compare=$(echo "$rebu"|sed "s|File||g")
    if [ "$rebu" != "$compare" ]; then
       cmd=$(echo "$arqrebu" >> sai.reb)
    fi
done
