      *                                                                *
       FD PROGRAMAS.
       01 PG-REGISTRO.
          03 PG-CHAVE.
         05 PG-SISTEMA        PIC 9(02).
         05 PG-GRUPO          PIC 9(02).
         05 PG-NROPC1         PIC 9(02).
         05 PG-NROPC2         PIC 9(02).
         05 PG-NROPC3         PIC 9(02).
         05 PG-NROPC4         PIC 9(02).
         05 PG-NROPC5         PIC 9(02).
         05 PG-NROPC6         PIC 9(02).
          03 redefines pg-chave.
             05 pg-chave-tb       pic 9(02) occurs 8.
          03 PG-NOME              PIC X(10).
          03 PG-DESCRICAO         PIC X(20).
          03 PG-TIPO-PROGRAMA     PIC X(01).
             88 PG-SHELL          VALUE 'S'.
             88 PG-MENU           VALUE 'M'.
             88 PG-PROGRAMA       VALUE 'P'.
          03 PG-CONTROLE.
             05 PG-PATH           PIC X(20).
             05 PG-DEV-IMPR       PIC X(08).
             05 PG-FLAG-EXEC      PIC 9(01).
             05 PG-PGM-ANT        PIC X(10).
             05 PG-REEXEC         PIC X(01).
             05 PG-NUM-EXEC       PIC 9(02).
          03 PG-DADOS-IMPRESSAO.
             05 PG-FORM           PIC 9(03).
             05 PG-TIPO-FOLHA     PIC X(01).
                88 PG-PAUTADO     VALUE 'P'.
                88 PG-LISO        VALUE 'L'.
             05 PG-NUM-VIAS       PIC 9(01).
             05 PG-COMPACTADO     PIC X(01).
          03 PG-PARAMETRO         PIC X(23).
          03 PG-ULTIMA-EXECUCAO.
             05 PG-DATA.
                10 PG-ANO         PIC X(04).
                10 PG-MES         PIC X(02).
                10 PG-DIA         PIC X(02).
             05 PG-HORA.
                10 PG-HH          PIC X(02).
                10 PG-MM          PIC X(02).
                10 PG-SS          PIC X(02).
             05 PG-USUARIO        PIC X(10).
          03 PG-FILLER.
             05 PG-OBS1           PIC X(50).
             05 PG-OBS2           PIC X(50).
          03 PG-ATIVO             PIC X(01).
          03 PG-EXECUTA-EXCLUSIVO PIC X(01).
          03 PG-FILLER            PIC X(38).
      *
