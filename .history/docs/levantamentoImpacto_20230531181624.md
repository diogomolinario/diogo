#![](imgs/profarma_distribuicao.png#only-light){ align=left width="70"} ![](imgs/profarma_distribuicao-w.png#only-dark){ align=left width="70"}
## Levantamento de Impacto
## Compilação
1. Compilação geral dos programas COBOL.
   >Criado um bash script "/usr/bin/compilaGeral.sh" [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/compilaGeral.sh "download")  
   >>Efetuada a compilação de todos os programas nos diretórios "/d/fontes/exec/" e "/d/fontes/logist/", obtivemos os seguintes resultados:  
   >>>De 764(Setecentos e sessenta e quatro) programas compilados, apenas 19(dezenove) apresentaram erros, todos erros foram de:  
   >>>variáveis não declaradas e/ou duplicadas, falta ou duplicação de parágrafo, copy book faltante e
   >>>problema na function numval-c, essa function espera argumento alfanumérico e o argumento usado está sendo numérico.   
   >>>==Todos os erros foram corrigidos==  
   
## CALL "SYSTEM"
1. Levantamento das chamadas feitas por (CALL "SYSTEM") nos programas COBOL.  
   >Levantamento efetuado pelo script verCallSystem.sh [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/verCallSystem.sh "download")  
   >O script deve ser executado no diretório onde encontram-se os códigos fontes (*.cbl)  
   >Após executar o script nos diretórios "/d/fontes/exec/" e "/d/fontes/logist/", obtivemos os seguintes resultados:  
   >==Resultado do script:==
   >     
   > |  Comando                   | Situação                                                   | ![](imgs/download.png#only-light){ align=center width="17"} ![](imgs/download.png#only-dark){ align=center width="17"}                                                        |
   > | :------------------------- | :--------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
   > | `/etc/ping`                | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `/etc/ping`                | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `/home/operador/REMOVE`    | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `/users/operador/COPIABD`  | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `/users/operador/DELETABD` | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `/home/operador/iti.sh`    | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `/home/operador/itr.sh`    | Não Encontrado                                             | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `chmod`                    | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `chown`                    | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `cp`                       | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `echo`                     | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `rm`                       | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `sort`                     | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `tail`                     | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `uname`                    | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `ls`                       | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `mv`                       | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `awk`                      | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `who`                      | Nativo ambiente                                            | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `cobrun`                   | COBOL                                                      | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `lp`                       | Pacote instalado                                           | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `rcp`                      | Pacote RSH instalado                                       | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `remsh`                    | Pacote RSH instalado                                       | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `ux2dos`                   | Criado link simbólico /usr/bin/ux2dos -> /usr/bin/unix2dos | ![](#only-light){ align=center width="17"} ![](#only-dark){ align=center width="17"}                                                                                          |
   > | `ll`                       | Criado script em /usr/bin/ll                               | [![](imgs/download.png#only-light){ align=center width="17"} ![](imgs/download.png#only-dark){ align=center width="17"}](downloads/ll "download")                             |          
   > | `compress`                 | Pacote NCOMPRESS instalado                                 | [![](imgs/download.png#only-light){ align=center width="17"} ![](imgs/download.png#only-dark){ align=center width="17"}](downloads/ncompress_4.2.4.5.orig.tar.gz "download")  |
   > | `uncompress`               | Pacote NCOMPRESS instalado                                 | [![](imgs/download.png#only-light){ align=center width="17"} ![](imgs/download.png#only-dark){ align=center width="17"}](downloads/ncompress_4.2.4.5.orig.tar.gz "download")  |
   > | `ftp`                      | Pacote LFTP instalado                                      | [![](imgs/download.png#only-light){ align=center width="17"} ![](imgs/download.png#only-dark){ align=center width="17"}](downloads/util-linux.zip "download")                 |          
   > | `pg`                       | Pacote UTIL-LINUX.ZIP instalado                            | [![](imgs/download.png#only-light){ align=center width="17"} ![](imgs/download.png#only-dark){ align=center width="17"}](downloads/util-linux.zip "download")                 |          
    
## REBUILD
1. Rebuild geral dos arquivos C-ISAM (*.idx) contidos no diretório "/d/dados/"  
   >Criado um bash script "/d/dados/rebuildGeral.sh" [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/rebuildGeral.sh "download")  
   >>Efetuado REBUILD em 647(Seiscentos e quarenta e sete), apenas um único arquivo "/d/dados/cadgen" estava corrompido.  
   >>==Corrigido pelo Adilson==