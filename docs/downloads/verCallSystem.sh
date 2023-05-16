#!/bin/bash
cmd=$(rm -f saidaVerCallSystem.txt saidaVerCallSystem1.txt saidaVerCallSystem1.lixo saidaVerCallSystem2.lixo saidaVerCallSystem3.lixo saidaVerCallSystem1.txt verCallSystem.txt)
fontes=$(grep -i 'system' *.cbl|cut -d ':' -f1)
declare -i linha=0
declare -i linhaAnt=0
declare -i nivel=0
declare -i nivelAtu=0
declare -i libera=0
declare -i imprimiu=0
declare -i leng=0
re='^[0-9]+$'
declare -i liberaFim=0
reFim='^[0-9]+$'
arquivoPesqFim="saidaVerCallSystem1.txt"
for fonte in $fontes
do
    echo "+------------------------------ $fonte ------------------------------+"
    cmd=$(rm -f saidaVerCallSystem.txt saidaVerCallSystem1.lixo saidaVerCallSystem2.lixo saidaVerCallSystem3.lixo saidaVerCallSystem1.txt)
    resultx=$(grep -i -H -w "call" $fonte|grep -v "'"|grep -v '"'|grep -v "      \*"|cut -d ':' -f1,2 > saidaVerCallSystem.txt;awk -F "using" '{print $NF}' saidaVerCallSystem.txt|awk '{ print $1 $NF }' saidaVerCallSystem.txt|grep -i -H -n  "`cut -d ':' -f2`" `awk '{ print $1 $NF }' saidaVerCallSystem.txt|cut -d ':' -f1` 2>/dev/null|grep -i -v -E "accept|perform|move|call|delimitede|size|into"|sort|uniq > saidaVerCallSystem2.lixo)
    cmd=$(echo "" > saidaVerCallSystem1.txt)
    while IFS= read -r linhaarqx || [[ -n "$linhaarqx" ]]; do
       result=$(echo "$linhaarqx"|sed "s|\t|    |g")
       libera=1
       primeiro="0"
       bloq=$(echo `echo $result|cut -d ':' -f3|cut -c 2-2`)
       if [ "$bloq" != "*" ]; then
          bloq=$(echo `echo $result|cut -d ':' -f3|cut -c 1-1`)
          libera=0
       fi
       if [ $libera -eq 0 ]; then
          linha=0
          linhaAnt=0
          nivel=0
          nivelAtu=0
          libera=0
          prog=$(echo "$result"|cut -d ':' -f1)
          linha=$(echo "$result"|cut -d ':' -f2)
          variavel=""
          if [ $linha -gt 0 ]; then
             variavel=$(cat -n "$prog" | sed -n "$linha p"|awk -F $linha '{ print $NF }' |cut -c 8-80|awk '{ print $1 }')
          fi
          if [[ $variavel =~ $re ]]
          then
             prog=$(echo "$result"|cut -d ':' -f1)
             linha=$(echo "$result"|cut -d ':' -f2)
             nivel=$(cat "$prog"| sed -n "$linha p"|sed "s|\t|    |g"|cut -c 8-80|awk -F $linha '{ print $NF }'|awk '{ print $1 }')
             cmd=$(cat -n "$prog" |sed -n "$linha p"|awk -F $linha '{print $NF}' |cut -c 8-80)
             termino="0"
             while  [ "$termino" == "0" ]; do
                 linhabkp=$(echo $linha)
                 libera=1
                 if [ $linha -gt 0 ]; then
                    bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 1-1`")
                    if [ "$bloq" != "*" ]; then
                       bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 7-7`")
                       if [ "$bloq" != "*" ]; then
                          bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 7-7`")
                          libera=0
                       fi
                    fi
                 fi
                 nivelAtu=99
                 if [ $libera -eq 0 ]; then
                    nivelAtu=$(cat "$prog"| sed -n "$linha p"|sed "s|\t|    |g"|cut -c 8-80|awk -F $linha '{ print $NF }'|awk '{ print $1 }')
                 else
                    nivelAtu=99
                 fi
                  if ([ "$primeiro" == "0" ]) || ([ $nivelAtu -gt $nivel ] && [ $nivelAtu -lt 77  ] && [ $nivelAtu -ne 0 ] && [ $nivelAtu -ne -1 ]) then
                    primeiro="1"
                    delimitador=$(cat "$prog"| sed -n "$linha p"|sed "s|\t|           |g"|cut -c 8-80|awk -F $linha '{ print $NF }'|awk '{ print $1 }')
                    varcob=$(cat $prog|sed -n "$linha p"|sed "s|\t|         |g"|cut -c 8-80|sed "s| *$delimitador||g"|tr '.' ' '|awk '{print $1}')
                    fimLinha=$(echo `cat -n "$prog" |sed -n "$linha p"`|cut -c 8-)
                    fimLinha=$(echo $fimLinha|sed 's/ *$//g')
                    fimLinha=$(cut -c `echo ${#fimLinha}-${#fimLinha}` <<< $fimLinha)
                    linhaConcatenada=""
                    if [ "$fimLinha" != "." ]; then
                       delimitador=$(cat "$prog"| sed -n "$linha p"|sed "s|\t|           |g"|cut -c 8-80|awk -F $linha '{ print $NF }'|awk '{ print $1 }')
                       linhaConcatenada=$(cat $prog|sed -n "$linha p"|sed "s|\t|         |g"|cut -c 8-80|sed "s| *$delimitador|$delimitador|g")
                       while  [ "$fimLinha" != "." ]; do
                          let linha++
                          libera=0
                          while  [ $libera -eq 0 ]; do
                              bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 1-1`")
                              if [ "$bloq" == "*" ]; then
                                 let linha++
                              else
                                 bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 7-7`")
                                 if [ "$bloq" == "*" ]; then
                                    let linha++
                                 else
                                    libera=1
                                 fi
                              fi
                          done
                          linhaConcatenada=$(echo "$linhaConcatenada"|tr '\n' ' ')
                          linhaConcatenada+=$(cat $prog|sed -n "$linha p"|sed "s|\t|        |g"|cut -c 8-80)
                          linhaConcatenada=$(echo $linhaConcatenada|sed 's/ *$//g')
                          fimLinha=$(cut -c `echo ${#linhaConcatenada}-${#linhaConcatenada}` <<< $linhaConcatenada)
                          varcob=$(echo "filler")
                       done
                       linhaConcatenada=$(echo "$linhaConcatenada"|tr '\n' ' ')
                       linhaConcatenada=$(echo "$linhaConcatenada"|sed "s|\t|        |g")
                       linhaConcatenada=$(echo "$linhaConcatenada"|awk '{print "#########",$0}')
                       linhabkp=$(echo $linha)
                    fi
                    varcob=$(echo "$varcob"|tr '[:upper:]' '[:lower:]')

                    if [ "$varcob" != "filler" ]; then
                       cmd=$(cat  "$prog" |sed -n "$linha p"|sed "s|\t|        |g"|cut -c 8-80|awk -F $linha '{print $NF}'|grep -i -H -n -w "`awk '{ print $2 }'`" "$prog" > saidaVerCallSystem1.lixo)
                    else
                       if [ "$linhaConcatenada" == "" ]; then
                          let linha--
                          cmd=$(cat  "$prog" |sed -n "$linha p"|sed "s|\t|        |g"|cut -c 8-80)
                          cmd=$(echo "$prog:$linha:         $cmd" > saidaVerCallSystem1.lixo)
                       else
                          cmd=$(echo "$prog:$linhabkp:        $linhaConcatenada" > saidaVerCallSystem1.lixo)
                       fi
                    fi
                    while IFS= read -r linhaarq || [[ -n "$linhaarq" ]]; do
                        cmd1=$(echo $linhaarq|sed "s|\t|        |g")
                        cmd1=$(echo $cmd1|sed "s|#| |g")
                        linha=$(echo $cmd1|cut -d ':' -f2)
                        libera=0
                        bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 1-1`")
                        if [ "$bloq" == "*" ]; then
                           libera=1
                        else
                           bloq=$(echo "`cat "$prog"|sed -n "$linha p"|cut -c 7-7`")
                           if [ "$bloq" == "*" ]; then
                              libera=1
                           fi
                        fi
                        if [ $libera -eq 0 ]; then
                           libera=1
                           ret=$(echo "$cmd1"|awk '{print $2}')
                           if [[ $ret =~ $re ]]
                           then
                               libera=1
                           else
                               libera=0
                           fi
                           ret=$(echo "$cmd1"|tr '[:upper:]' '[:lower:]'|grep -E -i -H "\"|'"|grep -E -i -v "if|display|perform|at |accept|cbl_"|grep -v ' " " '|grep -v " ' ' "|grep -i -v "x'00'"|grep -i -v 'x"00"')
                           libera=$(echo $?)
                           if [ $libera -eq 0 ]; then
                              ret=$(cat saidaVerCallSystem1.txt|grep $linha)
                              libera=$(echo $?)
                              if [ $libera -ne 0 ]; then
                                 echo "$cmd1" >> saidaVerCallSystem1.txt
                              fi
                           fi
                           delimitador=$(cat "$prog"| sed -n "$linha p"|sed "s|\t|           |g"|cut -c 8-80|awk -F $linha '{ print $NF }'|awk '{ print $1 }')
                           cmd1=$(echo "$prog:")
                           cmd1+=$(cat -n "$prog"|sed -n "$linha p"|awk '{print $1 ":"}')
                           cmd1+=$(cat "$prog"|sed -n "$linha p"|sed "s|\t|         |g"|cut -c 8-|sed "s| *$delimitador|$delimitador|g")
                           ret=$(echo "$cmd1"|grep -E -i -H "\"|'"|grep -E -i -v "space|if|initialize|select|copy|cancel|display|perform|at |accept"|grep -v ' " " '|grep -v " ' ' ")
                           if [ $? -eq 1 ]; then
                              variavel=$(echo "$cmd1"|cut -d ':' -f3|awk -F ' ' '{print $1}')
                              if [[ $variavel =~ $re ]]
                              then
                                 libera=0
                              fi
                           else
                              cmd1=$(echo "$cmd1"|sed "s|. *$|.|g")
                              fimLinha=$(cut -c `echo ${#cmd1}-${#cmd1}` <<< $cmd1)
                              if [ "$fimLinha" == "." ]; then
                                 fim="1"
                                 libera=0
                                 termino="1"
                              fi
                           fi
                           if [ $libera -eq 1 ]; then
                              fim="0"
                              ret=$(echo "$cmd1"|grep -E -i -v "call|using|space|if|initialize|select|copy|cancel|display|perform|at |accept"|grep -v ' " " '|grep -v " ' ' ")
                              if [ $? -eq 1 ]; then
                                 fim="1"
                              fi
                              linhaAnt=$(echo $linha)
                              while  [ "$fim" == "0" ]; do
                                  libera=1
                                  let linhaAnt--
                                  libera=0
                                  bloq=$(echo "`cat "$prog"|sed -n "$linhaAnt p"|cut -c 1-1`")
                                  if [ "$bloq" == "*" ]; then
                                     libera=1
                                     fim="1"
                                  else
                                     bloq=$(echo "`cat "$prog"|sed -n "$linhaAnt p"|cut -c 7-7`")
                                     if [ "$bloq" == "*" ]; then
                                        libera=1
                                        fim="1"
                                     fi
                                  fi
                                  if [ $libera -eq 0 ]; then
                                     cmd1=$(echo "$prog:")
                                     cmd1+=$(cat -n "$prog"|sed -n "$linhaAnt p"|awk '{print $1 ":"}')
                                     cmd1+=$(cat "$prog"|sed -n "$linhaAnt p"|sed "s|\t|        |g")
                                     imprimiu=0
                                     ret=$(echo "$cmd1"|grep -E -i -H "\"|'"|grep -i -v 'cbl_'|grep -E -i -v "screens|procedure|section|release|return|delete|write|close|if|display|perform|at |accept"|grep -v ' " " '|grep -i -v 'cbl_'|grep -v " ' ' ")
                                     libera=$(echo $?)
                                     if [ $libera -eq 0 ]; then
                                        ret=$(cat saidaVerCallSystem1.txt|grep $linhaAnt)
                                        libera=$(echo $?)
                                        if [ $libera -ne 0 ]; then
                                           echo "$cmd1" >> saidaVerCallSystem1.txt
                                           imprimiu=1
                                        fi
                                     fi
                                     libera=1
                                     ret=$(echo "$cmd1"|grep -E -i -w "to|into|screens|procedure|section|release|return|delete|write|close|string|move|value|if|display|perform|at |accept")
                                     libera=$(echo $?)
                                     if [ $libera -eq 0 ]; then
                                        if [ $imprimiu -eq 1 ]; then
                                           cmd1=$(echo "$prog:")
                                           cmd1+=$(cat -n "$prog"|sed -n "$linha p"|awk '{print $1 ":"}')
                                           cmd1+=$(cat "$prog"|sed -n "$linha p"|sed "s|\t|        |g")
                                           echo "$cmd1" >> saidaVerCallSystem1.txt
                                           termino="1"
                                        fi
                                        fim="1"
                                     fi
                                  fi
                              done
                           fi
                        fi
                    done < saidaVerCallSystem1.lixo
                 else
                    termino="1"
                 fi
                 linha=$(echo $linhabkp)
                 let linha++
             done
          fi
       fi
    done < saidaVerCallSystem2.lixo
    if [ -f "$arquivoPesqFim" ]; then
       cmdFim=$(cat "$arquivoPesqFim"|tr '[:upper:]' '[:lower:]'|sort -k 1 > saidaVerCallSystem3.lixo)
       linhaConcatenadaFim=
       linha=0
       linhaAnt=0
       while IFS= read -r linhaArqFim || [[ -n "$linhaArqFim" ]];
       do
           linhaArqFim=$(echo "$linhaArqFim"|sed "s|\n| |g")
           linhaArqFim=$(echo "$linhaArqFim"|sed "s|\t| |g")
           ret=$(echo "$linhaArqFim"|grep -E "\"|'"|grep -i -v 'x"00"'|grep -i -v "x'00'")
           liberaFim=$(echo $?)
           if [ $liberaFim -eq 1 ]; then
              retFim=$(echo "$linhaArqFim"|grep -i -w into)
              liberaFim=$(echo $?)
              if [ $liberaFim -eq 1 ]; then
                 retFim=$(echo "$linhaArqFim"|grep -i -w to)
                 liberaFim=$(echo $?)
              fi
           fi
           linha=$(echo "$linhaArqFim"|cut -d ':' -f2)
           prog=$(echo "$linhaArqFim"|cut -d ':' -f1)
           if [ $linha -ne $linhaAnt ] && [ $liberaFim -eq 0 ]; then
              linhaAnt=$(echo $linha)
              liberaFim=1
              linhaConcatenadaFim+=$(echo "$linhaArqFim"|cut -d ':' -f3)
              variavel=$(echo "$linhaConcatenadaFim"|awk '{print $1}')
              if [[ $variavel =~ $re ]]
              then
                 liberaFim=0
              fi
              leng=$(echo ${#variavel})
              if [ $leng -gt 2 ]; then
                 liberaFim=1
                 variavel=$(echo "$linhaConcatenadaFim"|awk '{print $2}')
                 if [[ $variavel =~ $re ]]
                 then
                    liberaFim=0
                 fi
                 leng=$(echo ${#variavel})
                 if [ $leng -gt 2 ]; then
                    liberaFim=1
                 fi
              fi
              if [ $liberaFim -eq 0 ]; then
                 liberaFim=1
                 fimLinhaFim=$(echo "$linhaConcatenadaFim"|sed 's/ *$//g')
                 fimLinhaFim=$(cut -c `echo ${#fimLinhaFim}-${#fimLinhaFim}` <<< $fimLinhaFim)
                 if [ "$fimLinhaFim" == "." ]; then
                    liberaFim=0
                 fi
              fi
              if [ $liberaFim -eq 0 ]; then
                 linhaConcatenadaFim=$(echo "$linhaConcatenadaFim")
                 liberaFim=$(echo $?)
                 if [ $liberaFim -eq 0 ]; then
                    cmdFim=$(echo "$prog:$linha:$linhaConcatenadaFim" >> verCallSystem.txt)
                 fi
                 linhaConcatenadaFim=""
              else
                 retFim=$(echo "$linhaConcatenadaFim"|grep -i -w into)
                 liberaFim=$(echo $?)
                 if [ $liberaFim -eq 1 ]; then
                    retFim=$(echo "$linhaConcatenadaFim"|grep -i -w to)
                    liberaFim=$(echo $?)
                    if [ $liberaFim -eq 0 ]; then
                       linhaConcatenadaFim=$(echo "$linhaConcatenadaFim")
                       cmdFim=$(echo "$prog:$linha:$linhaConcatenadaFim" >> verCallSystem.txt)
                       linhaConcatenadaFim=""
                    fi
                 else
                    linhaConcatenadaFim=$(echo "$linhaConcatenadaFim")
                    cmdFim=$(echo "$prog:$linha:$linhaConcatenadaFim" >> verCallSystem.txt)
                    linhaConcatenadaFim=""
                 fi
              fi
           else
              linhaAnt=$(echo $linha)
           fi
       done    < saidaVerCallSystem3.lixo
    fi
done
cmd=$(rm -f saidaVerCallSystem.txt saidaVerCallSystem1.lixo saidaVerCallSystem2.lixo saidaVerCallSystem3.lixo)
cmd=$(rm -f x w z;cat verCallSystem.txt |awk -F ':' '{$1="";$2=""; print $0 }' > x;cat x|cut -d "'" -f2 > w;cat w|cut -d '"' -f2 > z;cat z|grep -i -v -w "erro"|awk '{ print $1 }'|sort -u;rm -f x w z verCallSystem.txt saidaVerCallSystem1.txt)
echo $cmd|tr ' ' '\n'