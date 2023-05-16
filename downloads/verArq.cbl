      *---------------------------------------------------------------*
       IDENTIFICATION DIVISION.
       PROGRAM-ID.    xxx.
      *---------------------------------------------------------------*
       ENVIRONMENT    DIVISION.
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
	   CONSOLE IS CRT
	   DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT   SECTION.
       FILE-CONTROL.
           select alvara-esp assign '/d/dados/alvara-esp'
                  organization  is  indexed
                  access mode   is  dynamic
                  record key    is  alv-chave
                  file status   is  ws-status.  
           select arqcusto assign '/d/dados/arqcusto'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is ch-custo
		  file status     is ws-status.
           select arq-fant assign '/d/dados/arq-fant'
                  organization is indexed
                  access mode  is dynamic   
                  record key   is fa-chave
                  file status  is ws-status. 
      *
	   select arqhorta assign '/d/dados/arqhorta'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is ch-ah 
                  file status     is ws-status.
           select arqmsgn  assign '/d/dados/arqmsgn'    
                  organization    is indexed
                  access mode     is dynamic
                  record key      is msgn-chave
                  file status     is ws-status.    
           select arqpesq  assign '/d/dados/arqpesq'   
                  organization    is indexed
                  access mode     is dynamic
                  record key      is apq-chave
                  file status     is ws-status.  
           select arqsap assign '/d/dados/arqsap' 
                  organization  is indexed
                  access mode   is dynamic
                  record key    is as-chave
                  file status   is ws-status.

      *----------------------------------------------------------------*
      * objetivo ....: acumula valores da convocacao ativa (60 dias)   *
      * desenvolvedor: jorge                                           *
      * data ........: 17/09/2049                                      *
      *----------------------------------------------------------------*

	   select balance assign          '/d/dados/balance'
                  organization            is indexed
                  access mode             is dynamic
                  record key              is blc-chave
                  file status             is ws-status.
    
           select banco assign '/d/dados/banco'
                  organization   indexed
                  access mode    dynamic
                  record key     bc-cod
                  file status    ws-status.
           select bloqm001 assign '/d/dados/bloqm001'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is b001-chave
		  file status     is ws-status.  
           select blqgrupo assign '/d/dados/blqgrupo'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is blqgrp-chave 
                  file status     is ws-status.
       select blqprod assign  '/d/dados/blqprod'
	      organization    is indexed
	      access mode     is dynamic
	      record key      is blqp-chave
	      file status     is ws-status.
           select blqzona assign '/d/dados/blqzona'  
                  organization   is indexed
                  access mode    is dynamic 
                  record key     is bz-chave
                  file status    is ws-status.
           select boavi assign          '/d/dados/boavi'     
                  organization          is indexed
                  access mode           is dynamic
                  record key            is ch-boavi 
		  alternate record key  is ch2-boavi with duplicates
		  alternate record key  is ch3-boavi with duplicates
		  alternate record key  is ch4-boavi with duplicates
		  alternate record key  is ch5-boavi with duplicates
                  file status           is ws-status.
           select bo assign            '/d/dados/bo'
                  organization         is indexed
                  access mode          is dynamic 
                  record key           is s-chave-1
                  alternate record key is s-chave-2 with duplicates
                  file status          is ws-status.

           select cadbanco  assign '/d/dados/cadbanco'  
		  organization     is indexed
		  access mode      is dynamic
		  record key       is cadbco-chave
		  file status      is ws-status.  
      *----------------------------------------------------------------*     
      *                                                                *
      * projeto ........: controle de caixas.                          *
      * sistema ........: expedicao                                    *
      * objetivo .......: movementacao das caixas.                     *
      * eh povoado pelo :                                              *
      * programador ....: otavio                                       *
      * data ...........: 22/02/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|

	   select cadcaixa    assign '/d/dados/cadcaixa'
		  organization       is indexed
		  access mode        is dynamic
		  record key         is ccx-chave
		  alternate record key is ccx-cod-cliente 
					  with duplicates
		  file status        is ws-status.

      *|---|-----------------------------------------------------------|
           select caddocas    assign        '/d/dados/caddocas'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is dcs-chave
                  file status               is ws-status.
           select cadfunci    assign        '/d/dados/cadfunci'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is cfnc-chave
                  file status               is ws-status.
    
           select cadgen2 assign     '/d/dados/cadgen2'
		  organization       is indexed
                  access mode        is dynamic
		  record key         is cg2-chave
		  file status        is ws-status.   
           select cadgen assign      '/d/dados/cadgen'
		  organization       is indexed
                  access mode        is dynamic
		  record key         is cgn-chave
		  file status        is ws-status.   
           select cadprodol assign '/d/dados/cadprodol'
		  organization   is indexed
		  access mode    is dynamic
		  record key     is prodol-chave
		  file status    ws-status.
      *---------------------------------------------------------------*
      *            projeto resid.                                     *
      *                                                               *
      * objetivo ...: cadastar rede ou cliente no criterio de resid.  *
      * sistema ....: wms                                             *
      * logistica ..:                                                 *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 02/07/2015                                      *
      *                                                               *
      *---------------------------------------------------------------*
      *|---|-----------------------------------------------------------|

	   select cadresid    assign        '/d/dados/cadresid'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is crs-chave
                  file status               is ws-status.
    
        select cadstk281  assign    '/d/dados/cadstk281'
	       organization         is indexed           
	       access mode          is dynamic     
	       record key           is stk281-chave
	       file status          is ws-status.


           select cadusuarios assign '/d/dados/cadusuarios'
                  organization  is indexed
                  access mode   is dynamic
		  record key    is cadus-chave
                  file status   is ws-status.
           select cadvar  assign '/d/dados/cadvar'   
 	          organization is indexed
 	          access mode  is dynamic
 	          record key   is cv-chave-i   
		  alternate record key is cv-chave-ii = cv-ano,  
							cv-mes,
							cv-dia,
							cv-rota-f
		  with duplicates
 	          file status  is ws-status.
	   select categ-grp assign '/d/dados/categ-grp'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is grp-chave  
		  file status     is ws-status. 
	   select categoria assign '/d/dados/categoria'  
		  organization    is indexed
		  access mode     is dynamic
		  record key      is categ-chave
		  file status     is ws-status.  
      *|---|---------------------------|-------------------------------|
      *            projeto alterar lote e/ou vencimento da etiqueta.  *
      *                                                               *
      * objetivo ...: cadastar rede ou cliente para permitir alterar. *
      * sistema ....: wms                                             *
      * logistica ..: raphael tavares'                                *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 14/03/2019                                      *
      *                                                               *
      *|---|---------------------------|-------------------------------|

	   select cdaltlot    assign        '/d/dados/cdaltlot'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is cal-chave
                  file status               is ws-status.
    
      *|---|---------------------------|-------------------------------|
      *    projeto : cadastro de clientes com diferencial.             *
      *                                                                *
      *    objetivo: cadastro de clientes ou rede para diferenciar dos *
      * demais.                                                        *
      *                                versao 1.0 otavio 02fev2023     *
      *                                                                *
      *|---|---------------------------|-------------------------------|

	   select cdclired    assign        '/d/dados/cdclired'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is ccrd-chave
                  file status               is ws-status.
    
	   select chavenfe   assign '/d/dados/chavenfe' 
		  organization   is indexed
		  access mode    is dynamic
		  record key     is chavenfe-acesso
		  file status    is ws-status.      
      *|---|---------------------------|-------------------------------|
      *                      projeto lean.                            *
      *                                                               *
      * objetivo ...: criar chave para o endereco de linha.           *
      * sistema ....: wms                                             *
      * logistica ..:                                                 *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 04/jul/2019                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

	   select chendlin    assign        '/d/dados/chendlin'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is celn-endlinha  
		  alternate record key      is celn-codproduto
					       with duplicates
                  file status               is ws-status.
    
           select cidadeuf assign  '/d/dados/cidadeUF'
                  organization     is indexed
                  access mode      is dynamic
                  record key       is cidadeuf-chave
		  file status      is ws-status.
	   select classif assign '/d/dados/classif'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is classif-chave
		  file status     is ws-status.
      *----------------------------------------------------------------*     
      *                                                                *
      * projeto ........: controle de caixas.                          *
      * sistema ........: expedicao                                    *
      * objetivo .......: cadastro de redes e cliente.                 *
      * eh povoado pelo :                                              *
      * programador ....: otavio                                       *
      * data ...........: 22/03/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|

	   select clicaixa    assign '/d/dados/clicaixa'
		  organization       is indexed
		  access mode        is dynamic
		  record key         is clc-chave
		  file status        is ws-status.
           select clidpara assign '/d/dados/clidpara'           
		  organization    is indexed
		  access mode     is dynamic
		  record key      is cpr-chave
		  file status     is ws-status.

           select clienteclf assign '/d/dados/clienteclf' 
                  organization  is indexed
                  access mode   is dynamic
		  record key    is clieclf-chave
                  file status   is ws-status.  
           select condfaixa assign '/d/dados/condfaixa'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is faixa-chave
                  file status     is ws-status.
           select condgrade assign '/d/dados/condgrade'
		  organization     is indexed
		  access mode      is dynamic
		  record key       is grade-chave
		  file status      is ws-status.
           select condtpcli assign '/d/dados/condtpcli'
		  organization     is indexed
		  access mode      is dynamic
		  record key       is cndtc-chave
		  file status      is ws-status.
           select condvdpar     assign '/d/dados/condvdpar'
                  organization         is indexed
                  access mode          is dynamic
                  record key           is vdpar-chave
                  file status          is ws-status.
           select confclie   assign         '/d/dados/confclie'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is ccl1-chave
                  file status               is ws-status.
    
           select confclired assign         '/d/dados/confclired'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is ccl-chave
                  file status               is ws-status.
    
           select confende   assign         '/d/dados/confende'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is cee-chave
                  file status               is ws-status.
    
           select confends   assign         '/d/dados/confends'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is ces-chave
                  file status               is ws-status.
    
           select confinteli assign         '/d/dados/confinteli'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is cci-chave
                  file status               is ws-status.
    
           select confprod   assign         '/d/dados/confprod'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is ccp-chave
                  file status               is ws-status.
    
           select confrota   assign         '/d/dados/confrota'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is crt-chave
                  file status               is ws-status.
    
      *|---|---------------------------|-------------------------------|
      *                  projeto lean - conferencia zero.             *
      *                                                               *
      * objetivo ...: cadastro de conferencia para viabilizar a redu- *
      *               cao da conferencia.                             *
      * sistema ....: wms                                             *
      * logistica ..: gustavo pires.                                  *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 11/nov/2019                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

	   select confzero    assign        '/d/dados/confZero'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is czr-chave
                  file status               is ws-status.
    
           select contacor    assign        '/d/dados/contacor'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is ccs-chave
                  file status               is ws-status.
	   select contrcarro assign '/d/dados/contrcarro'
		  organization   is indexed
		  access mode    is dynamic
		  record key     is ctc-chave
		  file status    is ws-status.

	   select cubetas  assign '/d/dados/cubetas' 
		  organization    is indexed
		  access mode     is dynamic
		  record key      is cub-chave
		  alternate record key is cub-rota with duplicates
		  alternate record key is cub-cliente with duplicates
		  alternate record key is cub-datasai with duplicates
		  file status     is ws-status.

           select descnf   assign  '/d/dados/descnf'
                  organization is indexed
                  access mode  is dynamic
                  record key   is descnf-chave-1
	          alternate record key is chave-desc-cli = 
				          descnf-cliente 
				          descnf-flag     
					  with duplicates
                  file status  is ws-status.
           select difbbs  assign '/d/dados/difbbs'             
		  organization   is indexed
		  access mode    is dynamic
		  record key     is bbs-chave
		  file status    is ws-status. 

      *----------------------------------------------------------------*     
      *                                                                *
      * projeto ........: protocolo de devolucao.                      *
      * sistema ........: expedicao                                    *
      * objetivo .......: cadastrar os motivos de cancelamento         *
      * eh povoado pelo :                                              *
      * programador ....: marco                                        *
      * data ...........: 19/07/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|

	   select dschiscancel  assign '/d/dados/dschiscancel'
		  organization       is indexed
		  access mode        is dynamic
		  record key         is dsch-chave
		  file status        is ws-status.

           select eanmult assign       '/d/dados/eanmult'
		  organization         is indexed
		  access mode          is dynamic
		  record key           is em-chave  
		  alternate record key is em-chave2 with duplicates
		  file status          is ws-status.

	   select empresa  assign '/d/dados/empresas'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is emp-chave
		  file status     is ws-status.
           select endentrg  assign '/d/dados/endentrg'           
		  organization     is indexed
		  access mode      is dynamic
		  record key       is eet-chave
		  file status      is ws-status.

           select estados  assign '/d/dados/estadosn'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is est-chave
		  alternate record key is est-chave-alt 
		  file status     is ws-status.
           select etiqprofor assign         '/d/dados/etiqprofor'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is epf-chave
                  file status               is ws-status.
    
           select excecao assign '/d/dados/excecao'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is ecc-chave
                  file status     is ws-status.
           select excmsgn  assign '/d/dados/excmsgn'    
                  organization    is indexed
                  access mode     is dynamic
                  record key      is exgn-chave
                  file status     is ws-status.    
      * programador.: jorge                                           *
      * data .......: 03/01/2023                                      *
      *                                                               *
      *---------------------------------------------------------------*

	   select excresid    assign        '/d/dados/excresid'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is exr-chave
                  file status               is ws-status.
    
      *|---|---------------------------|-------------------------------|
      *    inclusao de quebra do romaneio por restricao de validade.   *
      *                                            25/out/2019 otavio  *
      *|---|---------------------------|-------------------------------|
	   
	   select excvalid assign '/d/dados/excvalid'   
                  organization    is indexed
                  access mode     is dynamic
                  record key      is excv-chave
                  file status     is ws-status.      
           select fastrack assign '/d/dados/fastrack'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is fst-chave
                  file status     is ws-status.

	   select fat-fer  assign    '/d/dados/fat-fer'
		  organization       is indexed 
		  access mode        is dynamic     
		  record key         is ff-chave
		  file status        is ws-status.
           select geogrpar    assign        '/d/dados/geogrpar'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is grp1-chave
                  file status               is ws-status.
    

           select grupofor assign  '/d/dados/grupofor' 
                  organization     is indexed
                  access mode      is dynamic
                  record key       is gf-chave
                  file status      is ws-status. 




            select grupotv       assign      '/d/dados/grupotv' 
                   organization              is indexed
                   access mode               is dynamic
                   record key                is grtv-chave
                   alternate key             is grtv-chave-alt 
                   file status               is ws-status.   
      *|---|---------------------------|-------------------------------|
      *             projeto: controle de saldo na linha.               *
      *                                                                *
      *    historico de movimentacao no canal.      otavio 12/mar/2020 *
      *|---|---------------------------|-------------------------------|
           select hiscanal assign      '/d/dados/hiscanal'
                  organization         is indexed
                  access mode          is dynamic
                  record key           is hcn-chave
		  alternate record key is hcn-chavealt =
					  hcn-produto
					  hcn-data-wms
					  hcn-hora-wms
					  hcn-sequenciainc
					  with duplicates 
                  file status          is ws-status.   
      *----------------------------------------------------------------*     
      *                                                                *
      * projeto ........: protocolo de devolucao                       *
      * sistema ........: expedicao                                    *
      * objetivo .......: historico de protocolo de devolucao          *
      * eh povoado pelo :                                              *
      * analista .......: marco                                        *
      * data ...........: 05/06/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|

	   select hisprotdev     assign '/d/dados/hisprotdev' 
		  organization       is indexed
		  access mode        is dynamic
		  record key         is hisprotdev-chave
		  file status        is ws-status.    
           select ictlnumg assign '/d/dados/ictlnumg'           
		  organization    is indexed
		  access mode     is dynamic
		  record key      is cng-chave
		  file status     is ws-status.

           select idocped assign     '/d/dados/idocped'
		  organization       is indexed
                  access mode        is dynamic
		  record key         is ipd-chave
		  file status        is ws-status.   
           select intsap assign '/d/dados/intsap'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is its-chave
                  file status     is ws-status.
           select invnumcon assign '/d/dados/invnumcon'
                  organization     is indexed
                  access mode      is dynamic
                  record key       is invnumcon-chave
                  file status      is ws-status.
           select linhinvp assign '/d/dados/linhinvp'           
		  organization    is indexed
		  access mode     is dynamic
		  record key      is ipr-chave
		  file status     is ws-status.

           select lotevezn assign '/d/dados/lotevezn'
	          organization   is indexed
	          access mode    is dynamic
	          record key     is lvzn-chave
		  file status    is ws-status.    
           select matricul assign '/d/dados/matricul'           
		  organization    is indexed
		  access mode     is dynamic
		  record key      is mtr-chave
		  alternate record key is mtr-senha 
		  file status     is ws-status.

           select metaprio    assign        '/d/dados/metaprio'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is mpr-chave
                  file status               is ws-status.
    
      *----------------------------------------------------------------*
      *       select do arquivo modulo do fechamento                   *
      *                                                                *
      * em: 22/01/2007 - adilson / marco / otavio                      *
      *----------------------------------------------------------------*
       
          select modfec   assign '/d/dados/modfec'
                 organization is indexed
                 access mode  is dynamic
                 record key   is mod-chave
                 file status  is ws-status.
           select motcanmin  assign  '/d/dados/motcanmin'
                  organization     is indexed        
                  access mode      is dynamic
                  record key       is motcan-chave
                  file status      is ws-status.

           select nfentrada assign '/d/dados/nfentrada'
		  organization     is indexed
		  access mode      is dynamic
		  record key       is nfe-chave
*-------> retirando nfe-nfentrada de chave alternada 08/12/2015 marco
*                 alternate record key  is nfe-nfentrada 
*                                       with duplicates
*-------> retirando nfe-nfentrada de chave alternada 08/12/2015 marco
                  alternate record key  is nfe-planilha 
                                        with duplicates
		  file status      is ws-status.

           select nomefant  assign '/d/dados/nomefant'           
		  organization     is indexed
		  access mode      is dynamic
		  record key       is nft-chave
		  alternate record key is nft-chave-alt with
					 duplicates
		  file status      is ws-status.


           select notapt   assign   '/d/dados/notapt' 
                  organization      is indexed
                  access mode       is dynamic
                  record key        is pt-chave
                  file status       is ws-status.   

           select notlot  assign '/d/dados/notlot'             
		  organization   is indexed
		  access mode    is dynamic
		  record key     is nlt-chave 
		  alternate record key is nlt-chave2 with duplicates
		  file status    is ws-status.

           select numpedol assign '/d/dados/numpedol'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is numpol-chave
                  alternate record key is chave-ped = 
					  numpol-data 
					  numpol-pedido
					  with duplicates   
                  file status     is ws-status.
           select olcodcli assign '/d/dados/olcodcli'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is olcli-chave 
                  file status     is ws-status.
           select olprojeto assign '/d/dados/olprojeto'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is olproj-chave 
                  file status     is ws-status.
           select olprovedor assign '/d/dados/olprovedor'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is olprov-chave
                  file status     is ws-status.
           select operadora assign '/d/dados/operadora'
                  organization        is indexed
                  access mode         is dynamic
                  record key          is oper-codigo
                  file status         is ws-status.
      *---------------------------------------------------------------*
      *                     projeto napolitano                        *
      *                                                               *
      * objetivo:    blocado - cadastro do palete final do produto.   *
      * gerencia:    logistica.                                       *
      * data:        24/01/2018.                                      *
      * programador: otavio                                           *
      * programas:                                                    *
      *                                                               *
      *---------------------------------------------------------------*
      *|---|-----------------------------------------------------------|
	   select paleprod    assign        '/d/dados/paleprod'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is plp-chave 
		  alternate record key      is plp-produto
					       with duplicates
                  file status               is ws-status.
    
           select pdf1 assign      '/d/dados/pdf1'
                  organization     is indexed
                  access mode      is dynamic
                  record key       is cf1chave
                  alternate record key cf1chave2 with duplicates
                  file status      is ws-status.
        select pednfsap assign  '/d/dados/pednfsap'  
	       organization     is indexed           
	       access mode      is dynamic     
	       record key       is pednfsap-chave
	       file status      is ws-status.
           select peem assign          '/d/dados/peem'
                  organization         is indexed
                  access mode          is dynamic
                  record key           is pee-chave
                  alternate record key is pee-canal-peem 
                                          with duplicates
                  alternate record key is pee-endereco-kf
                                          with duplicates
                  file status          is ws-status.
           select pfc11 assign   '/d/dados/pfc11'
                  organization   is indexed
                  access mode    is dynamic
                  record key     is c11chave
                  alternate record key is c11chave-alt
		  file status    is ws-status.
           select pfc12c assign '/d/dados/pfc12c'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c12chave
                  file status   is ws-status.
           select pfc2   assign '/d/dados/pfc2'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c2codigo
                  file status   is ws-status.

           select pfc2s1 assign '/d/dados/pfc2s1'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c2s1chave
                  file status   is ws-status.
           select pfc3a assign  '/d/dados/pfc3a'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c3achave 
                  file status   is ws-status.
           select pfc3 assign   '/d/dados/pfc3'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c3codigo
                  file status   is ws-status.
           select pfc3sap assign   '/d/dados/pfc3sap'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c3sap-chave
                  file status   is ws-status.
           select pfc4g assign  '/d/dados/pfc4g'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c4gcodigo
                  file status   is ws-status.
           select pfc4 assign  '/d/dados/pfc4'
                  organization is indexed
                  access mode  is dynamic
                  record key   is c4codigo
                  file status  is ws-status.
           select pfc4rep assign  '/d/dados/pfc4rep'
                  organization is indexed
                  access mode  is dynamic
                  record key   is c4r-chave
		  alternate record key is c4r-cgc-vendedor
		   with duplicates
		  alternate record key is c4r-cpf-vendedor
		   with duplicates
		  alternate record key is c4r-codigo-filial
		   with duplicates
                  file status  is ws-status.
           select pfc4s assign  '/d/dados/pfc4s'
                  organization  is indexed
                  access mode   is dynamic
                  record key    is c4scodigo
                  file status   is ws-status.
           select pfc5 assign    '/d/dados/pfc5'
                  organization   is indexed
                  access mode    is dynamic
                  record key     is c5chave  
                  file status    is ws-status.
           select pfc7 assign    '/d/dados/pfc7'
                  organization   is indexed
                  access mode    is dynamic
                  record key     is c7chave
                  file status    is ws-status.
           select pfd4n assign    '/d/dados/pfd4n'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is d4nchave
                  file status     is ws-status.
           select pffecham  assign '/d/dados/pffecham'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is fecham-chave
		  file status     is ws-status.
           select pfm15 assign     '/d/dados/pfm15'
                  organization     is indexed
                  access mode      is dynamic
                  record key       is m15chave
                  file status      is ws-status.

            select placaiti      assign      '/d/dados/placaiti'
                   organization              is indexed
                   access mode               is dynamic
                   record key                is pli-chave
		   alternate key             is pli-carro
                   file status               is ws-status.   

            select arqrej           assign   '/d/dados/plancrej'      
                   organization              is indexed
                   access mode               is dynamic
                   record key                is arqrej-chave
                   file status               is ws-status.          

            select planilha01       assign   '/d/dados/planilha01'
                   organization              is indexed
                   access mode               is dynamic
                   record key                is plc01-chave
                   file status               is ws-status.      
           select planilha02   assign '/d/dados/planilha02'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc02-chave
	          file status        is ws-status.
           select planilha03   assign '/d/dados/planilha03'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc03-chave
	          file status        is ws-status.
           select planilha03u   assign '/d/dados/planilha03u'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc03u-chave
	          file status        is ws-status.
           select planilha05   assign '/d/dados/planilha05'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc05-chave
	          file status        is ws-status.
           select planilha05u   assign '/d/dados/planilha05u'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc05u-chave
	          file status        is ws-status.
           select planilha06d   assign '/d/dados/planilha06d'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc06d-chave
	          file status        is ws-status.
           select planilha06h   assign '/d/dados/planilha06h'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc06h-chave
	          file status        is ws-status.
           select planilha06l   assign '/d/dados/planilha06l'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc06l-chave
	          file status        is ws-status.
           select planilha13   assign '/d/dados/planilha13'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc13-chave
	          file status        is ws-status.
           select planilha15   assign '/d/dados/planilha15'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is plc15-chave
	          file status        is ws-status.

            select planlib          assign   '/d/dados/planlib'     
                   organization              is indexed
                   access mode               is dynamic
                   record key                is planlib-chave
                   file status               is ws-status.         

            select planvol          assign   '/d/dados/planvol'     
                   organization              is indexed
                   access mode               is dynamic
                   record key                is plv01-chave
                   file status               is ws-status.         

            select plunifica01      assign   '/d/dados/plunifica01' 
                   organization              is indexed
                   access mode               is dynamic
                   record key                is plun01-chave
                   file status               is ws-status.     
           select prodclas assign      '/d/dados/prodclas'
                  organization         is indexed
                  access mode          is dynamic
                  record key           is pc-chave
                  file status          is ws-status.
      *------------------------------------------------------------------*
	  
	  select prodestb    assign  '/d/dados/prodestB'     
                 organization        is indexed
                 access mode         is dynamic
                 record key          is prodestb-chave
                 file status         is ws-status.   
      *----------------------------------------------------------------*
      *                   projeto sd x wms                             *
      *                                                                *
      *  objetivo: guardar o saldo do produtos em z5 no sap            *
      *                                                                *
      *                                                                *
      *  programador:      adilson                                     *
      *  area de producao: filial:/d/dados/produtz5                    *
      *  area de backup:   ?                                           *
      *  eh povoado pelo:  filial:/d/exec/fncwms13.int (funcao)        *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*

        select produtz5   assign  '/d/dados/produtZ5' 
	       organization       is indexed           
	       access mode        is dynamic     
	       record key         is prdz5-chave
	       file status        is ws-status.   

           select programas assign  '/d/dados/programas'
                  organization     is indexed        
                  access mode      is dynamic
                  record key       is pg-chave
		  alternate record is pg-nome with duplicates
                  file status      is ws-status.
           select progs   assign   '/d/dados/progs'
                  organization     is indexed        
                  access mode      is dynamic
		  alternate record is prg-chamada
				   with duplicates
		  alternate record is prg-nome-real
				   with duplicates
                  record key       is prg-chave
                  file status      is ws-status.
		   
	   select protodev   assign '/d/dados/protodev' 
		  organization   is indexed
		  access mode    is dynamic
		  record key     is protodev-chave
		  alternate record key is protodev-chave-alt
		  file status    is ws-status.      
           select qtdpedcli assign '/d/dados/qtdpedcli'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is qpc-chave
                  file status     is ws-status.
      *|---|---------------------------|-------------------------------|
      *            projeto eliminar espelho a4 por etiqueta.          *
      *                                                               *
      * objetivo ...: armazenar intervalo de caixas validas.          *
      * sistema ....: wms                                             *
      * logistica ..: gustavo pires.                                  *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 06/abr/2022                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

	   select regcaixa    assign        '/d/dados/regcaixa'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is rgcx-sequencia
		  alternate record key      is rgcx-cxinicio = 
						    rgcx-tipo
						    rgcx-caixainicio
		  alternate record key      is rgcx-cxfinal =
						    rgcx-tipo
						    rgcx-caixafinal 
                  file status               is ws-status.
    
           select relacmsg assign to   ws-relacmsg
                  organization         is indexed
                  access mode          is dynamic
                  record key           is rlcmsg-chave
		  alternate record key is rlcmsg-chave-alt
		  file status          is ws-status.
           select retencao assign '/d/dados/retencao'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is ret-chave
		  file status     is ws-status.
           select retsap assign '/d/dados/retencaosap'
		  organization    is indexed
		  access mode     is dynamic
		  record key      is retsap-chave
		  file status     is ws-status.   
           select rota assign      '/d/dados/rotas'
		  organization     is indexed
		  access mode      is dynamic
		  record key       is rot-chave
		  file status      is ws-status.
           select rotastp assign   '/d/dados/rotastp'
		  organization     is indexed
		  access mode      is dynamic
		  record key       is rtp-chave
		  file status      is ws-status.
           select rotastr assign   '/d/dados/rotastr'
		  organization     is indexed
		  access mode      is dynamic
		  record key       is rtt-chave
		  file status      is ws-status.

           select saldopend  assign '/d/dados/saldopend'
                  organization      is indexed
                  access mode       is dynamic
                  record key        is sldp-chave
                  file status       is ws-status.

      *----------------------------------------------------------------*
      *                   projeto sd x wms                             *
      *                                                                *
      *  objetivo: guardar o saldo da rua z estoque (wms).             *
      *                                                                *
      *                                                                *
      *  programador:      otavio                                      *
      *  area de producao: filial:/d/dados/saldwmsz                    *
      *  area de backup:   ?                                           *
      *  eh povoado pelo:  filial:/d/exec/fncwms13.int (funcao)        *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*

        select saldwmsz   assign  '/d/dados/saldwmsz' 
	       organization       is indexed           
	       access mode        is dynamic     
	       record key         is slz-chave
	       file status        is ws-status.   

           select scfuncao    assign        '/d/dados/scfuncao'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scsn-chave
                  file status               is ws-status.
    
           select scsconfg    assign        '/d/dados/scsconfg'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scsg-chave
                  file status               is ws-status.
    
      *|---|---------------------------|-------------------------------|
      *            projeto lean - picking conferencia de caixa        *
      *                                                               *
      * objetivo ...: cadastro das redes e/ou clientes para conferen- *
      *               cia de caixa e lacre.                           *
      * sistema ....: wms                                             *
      * logistica ..: gustavo pires.                                  *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 29/jan/2020                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

	   select scscxcli    assign        '/d/dados/scscxcli'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scsc-chave
                  file status               is ws-status.
    
      *|---|---------------------------|-------------------------------|
      *            projeto lean - picking conferencia de caixa        *
      *                                                               *
      * objetivo ...: cadastro das estacoes liberadas para conferencia*
      *               de caixa e lacre.                               *
      * sistema ....: wms                                             *
      * logistica ..: gustavo pires.                                  *
      * gerente ....:                                                 *
      * programador.: otavio                                          *
      * data .......: 19/nov/2019                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

	   select scscxemb    assign        '/d/dados/scscxemb'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scsx-chave
                  file status               is ws-status.
    
           select scsfunci    assign        '/d/dados/scsfunci'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scsf-chave
                  file status               is ws-status.
    
           select scsfunst    assign        '/d/dados/scsfunst'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scss-chave
                  file status               is ws-status.
    
           select scslbset    assign        '/d/dados/scslbset'
                  organization              is indexed
                  access mode               is dynamic
                  record key                is scsb-chave
                  file status               is ws-status.
    
	   select subsetor assign '/d/dados/subsetor'  
		  organization    is indexed
		  access mode     is dynamic
		  record key      is subsetor-chave
		  file status     is ws-status.  
	   select supcard00c assign    '/d/dados/supcard00c'  
		  organization         is indexed
		  access mode          is dynamic
		  record key           is sc00-chave        
		  file status          is ws-status.  
	   select supcard04c  assign '/d/dados/supcard04c'   
		  organization      is indexed
		  access mode       is dynamic
		  record key        is sc04-chave        
		  file status       is ws-status.   
	   select supcard11  assign    '/d/dados/supcard11'   
		  organization         is indexed
		  access mode          is dynamic
		  record key           is sc11-chave        
		  file status          is ws-status.  

           select tabaltusu      assign '/d/dados/tabaltusu'
                  organization  is indexed
                  access mode   is dynamic
		  record key    is tabaltus-chave
                  file status   is ws-status.

           select tabusu      assign '/d/dados/tabcadusu'
                  organization  is indexed
                  access mode   is dynamic
		  record key    is tabus-chave
                  file status   is ws-status.
           select tabelmsg      assign '/d/dados/tabelmsg'
                  organization      is indexed
                  access mode       is dynamic
                  record key        is tblmsg-chave
		  file status       is ws-status.
           select tabimpsetor     assign '/d/dados/tabimpsetor'
                  organization    is indexed
                  access mode     is dynamic
                  record key      is tabimpsetor-chave
                  file status     is ws-status.
           select tablc    assign '/d/dados/tablotecasa'
	          organization   is indexed
	          access mode    is dynamic
	          record key     is tablc-chave
		  file status    is ws-status.       
           select tabreimp  assign '/d/dados/tabreimp' 
	          organization   is indexed
	          access mode    is dynamic
	          record key     is tabreimp-chave
		  file status    is ws-status.   
           select tipocli assign '/d/dados/tipocli'
		  organization   is indexed
		  access mode    is dynamic
		  record key     is tc-tipocli
		  file status    is ws-status.
           select arq-totvs     assign      '/d/dados/totvs'
		  organization              is line sequential
		  access mode               is sequential
*		  record key                is chave-01
		  file  status              is ws-status.


           select usuariosn assign '/d/dados/ussenha'
                  organization  is indexed
                  access mode   is random 
		  record key    is us-chaven
                  file status   is ws-status.

           select usuarios assign '/d/dados/usuarios'
                  organization  is indexed
                  access mode   is dynamic
		  record key    is us-chave
                  alternate record key is us-chave-programas
                              with duplicates
                  file status   is ws-status.
           select vendas assign '/d/dados/vendas' 
                  organization  is indexed
                  access mode   is dynamic
                  record key    is vd-chave
                  file status   is ws-status.
           select vndativo    assign '/d/dados/vndativo'     
                  organization        is indexed
                  access mode         is dynamic
                  record key          is vnda-cliente
                  file status         is ws-status.   

            select xcdev01       assign   '/d/dados/xcdev01'
                   organization              is indexed
                   access mode               is dynamic
                   record key                is xcd01-chave
                   file status               is ws-status.      
           select xcdev02   assign '/d/dados/xcdev02'
                  organization       is indexed
                  access mode        is dynamic
                  record key         is xcd02-chave
	          file status        is ws-status.
			  
        SELECT txt assign to "xxx-st"
          organization is line sequential
          file status is ws-status.

       DATA DIVISION.
       FILE SECTION.

      *--------------------------------------------------------*
      * Arquivo de alvara especial de clientes para compra de  *
      * produtos da familia ROACUTAN - 25/03/2003     Adilson  *
      * Organizacao : Indexada                                 *
      * Primary key : alv-codigo (c3codigo)                    *
      *--------------------------------------------------------*
       FD  ALVARA-ESP.
       01  ALVARA-REG.    
           05 ALV-CHAVE.
              07 ALV-CODIGO          PIC 9(06). 
           05 ALV-DT-INCLUSAO.
	      07 ALV-INCL-AA         PIC 9(04).
	      07 ALV-INCL-MM         PIC 9(02).
	      07 ALV-INCL-DD         PIC 9(02).
           05 ALV-ALVARA-ESP         PIC X(20).
	   05 ALV-VALIDADE.        
	      07 ALV-VAL-AA          PIC 9(04).
	      07 ALV-VAL-MM          PIC 9(02).
	      07 ALV-VAL-DD          PIC 9(02).
	   05 ALV-ALTERADO           PIC 9(01). 
	   05 ALV-FILLER             PIC 9(09). 
	   
       FD  ARQCUSTO.
       01  REG-CUSTO.
	   03  CH-CUSTO.
	       05  COD-CD-CUSTO           PIC 9(002). 
	       05  COD-PRO-CUSTO          PIC 9(006).
           03  CUSTO-CONT                 PIC 9(010)V9999.
	   03  CUSTO-MEDIO                PIC 9(008)V9999.
	   03  CUSTO-DC-PADRAO            PIC 9(003)V99.
      *---------------------------------------------------------------*
      * Arquivo criado para guardar os nomes fantasias dos produtos   *
      * Monica - 17/11/95                                             *
      *---------------------------------------------------------------*
       FD ARQ-FANT.
       01 REG-FANT.
	  03 FA-CHAVE.
	     05 FA-CODIGO        PIC 9(06).
          03 FA-DESCR            PIC X(38).
      *
      *********------------------------------------------*********
      *    Arquivo : arqhorta                                    *
      *    Organizacao : indexada                                *
      *    Chave de acesso : ch-ah                               *
      *                                                          *
      *    Descricao : Arquivo que guardara as correlacoes de    *
      *                vendas interestaduais (de/para).          *
      *********------------------------------------------*********
      *
       FD  ARQHORTA.
       01  REG-AH.
	   03  CH-AH.
	       05  CD-ORIGEM-AH            PIC 9(002).
	       05  CD-DESTINO-AH           PIC 9(002).
           03  APELIDO-OR-DEST-AH.
               05  APELIDO-ORIGEM-AH       PIC X(002).
               05  APELIDO-DEST-AH         PIC X(002).
           03  CIDADE-DEST-AH              PIC X(015).
	   03  cidade-dest-ah-r redefines cidade-dest-ah.
	       05 filler                   pic x(008).
	       05 apelido-rota             pic x(007).
           03  ESTADO-ORIG-AH              PIC X(002).
	   03  BLOQUEADO-AH                PIC X(001).
           03  FILLER                      PIC X(008).
      *------------------------------------------------------------*
       FD  ARQMSGn.   
       01  MSGn-REG.
           03 MSGn-CHAVE.
	      05 MSGn-TIPO           PIC x(01). *> R=cod rede, C=cod cliente
	      05 msgn-codcli         pic 9(06).
	      05 filler redefines msgn-codcli.
		 07 msgn-rede-fixo   pic 9(01).
		 07 msgn-cod-rede    pic 9(05).

           03 MSGn-DESCRICAO         PIC X(39).
	   03 msgn-qtde-dias-venc    pic 9(04).
           03 MSGn-SITUACAO          PIC X(01). *> A=ativo, N=nao ativo

	   03 msgn-filler            pic 9(18).

	   03 msgn-log-inclusao.
	      05 msgn-usuario-inc    pic x(10).
	      05 msgn-login-inc      pic x(10).
	      05 msgn-data-inc       pic 9(08).
	      05 filler redefines msgn-data-inc.
		 07 msgn-anoInc      pic 9(04).
		 07 msgn-mesInc      pic 9(02).
		 07 msgn-diaInc      pic 9(02).
	      05 msgn-hora-inc       pic 9(08).
	      
	   03 msgn-log-alteracao.
	      05 msgn-usuario-alt    pic x(10).
	      05 msgn-login-alt      pic x(10).
	      05 msgn-data-alt       pic 9(08).
	      05 filler redefines msgn-data-alt.
		 07 msgn-anoAlt      pic 9(04).
		 07 msgn-mesAlt      pic 9(02).
		 07 msgn-diaAlt      pic 9(02).
	      05 msgn-hora-alt       pic 9(08).

      *------------------------------------------------------------*
      * Arquivo : Cadastro de Pesquisa                             *
      * Objetivo: Manter informacoes da pesquisa do sistema de te- *
      *           levendas                                         *
      *------------------------------------------------------------*
       
       FD  ARQPESQ.   
       01  APQ-REGISTRO.
           03 APQ-CHAVE.
	      05 APQ-CODIGO          PIC 9(03).
           03 APQ-DATA-INCLUSAO.
              05  APQ-ANO-INCLUSAO   PIC 9(04).
              05  APQ-MES-INCLUSAO   PIC 9(02).
              05  APQ-DIA-INCLUSAO   PIC 9(02).
           03 APQ-DESCRICAO          PIC X(15).
           03 APQ-STATUS             PIC X(01).
	   03 APQ-TIPO               PIC X(01).
	   03 APQ-FILLER             PIC 9(05).
	   03 APQ-DATA-VALIDADE.
              05  APQ-DATA-INI.                 
                  07  APQ-ANO-INI    PIC 9(04).
                  07  APQ-MES-INI    PIC 9(02).
                  07  APQ-DIA-INI    PIC 9(02).
              05  APQ-DATA-FIN.                 
                  07  APQ-ANO-FIN    PIC 9(04).
                  07  APQ-MES-FIN    PIC 9(02).
                  07  APQ-DIA-FIN    PIC 9(02).
           03 APQ-PERGUNTAS          OCCURS 8 TIMES.
              05 APQ-PERGUNTA        PIC X(60).
              05 APQ-QTDE-RESP       PIC 9(02).
              05 APQ-RESPOSTAS       OCCURS 8 TIMES.
                 07 APQ-DESCR-RESP   PIC X(15).
           03 filler                 pic x(20).      
      *----------------------------------------------------------------*
      * APQ-TIPO      - P para Pesquisa e O para Oferta                *
      * APQ-STATUS    - S ativo geral, N intativo, C ativo por cliente *
      *----------------------------------------------------------------*
      *-------------------------------------------------------------------------
      *  ARQUIVO.........: ARQSAP - Controle Sequencias de Cargas no SAP
      *  ORGANIZACAO.....: Indexado
      *  CHAVE DE ACESSO.: C80CHAVE
      *  TAMANHO.........: 64
      *  DATA............: 24/11/2000 - Adriano
      *-------------------------------------------------------------------------
      *
       FD  ARQSAP.
       01  REG-ARQSAP.
           05 AS-CHAVE.
             10 AS-CODIGO               PIC 9(001).
           05 AS-DADOS.
             10 AS-CLI                  PIC 9(008).
             10 AS-PROD                 PIC 9(008).
             10 AS-INFREC               PIC 9(003).
             10 AS-VEN                  PIC 9(003).
             10 AS-DEV                  PIC 9(003).
             10 AS-ESTOQUE              PIC 9(008).
             10 AS-SEQ-TRA              PIC 9(005).
             10 AS-SEQ-FIN              PIC 9(005).
             10 AS-FALTA                PIC 9(005).
             10 AS-SEQ-MOV              PIC 9(005).
             10 AS-SAPBI                PIC 9(005).
             10 AS-TRT                  PIC 9(005).
             10 AS-SEQ-TEL              PIC 9(005).
             10 AS-SEQ-CLIGC            PIC 9(005).
	     10 AS-SEQ-TARIFA           PIC 9(005).
	     10 AS-SEQ-BANCO            PIC 9(005).
             10 AS-SEQ-SERASA           PIC 9(005).
	     10 AS-SAPDUPL              PIC 9(005).
	     10 AS-SEQ-VDPAR            PIC 9(005).
	     10 AS-FILLER               PIC X(118).
      *----------------------------------------------------------------*     
      * Projeto ........: Balanceador                                  *
      * Sistema ........: Logistica.                                   *
      * Objetivo .......: acumula valores da convocacao ativa (60 dias)* 
      * Eh povoado pelo : fncblc02                                     *
      * Programador ....: Jorge                                        *
      * Data ...........: 17/09/2019                                   *
      *----------------------------------------------------------------*     

	   fd  balance.

	   01  blc-reg.
	       03 blc-chave.
                  05 blc-produto        pic 9(06).

               03 blc-qtde-total        pic 9(07). 
               03 blc-qtde-acesso-tot   pic 9(06). 
	       03 blc-qtde-dias         pic 9(02).

               03 blc-ult-data          pic 9(08).
               03 blc-ult-data-re redefines blc-ult-data.
                  05 blc-ult-data-ano   pic 9(04).
                  05 blc-ult-data-mes   pic 9(02).
                  05 blc-ult-data-dia   pic 9(02).

               03 blc-filler            pic 9(10).

      *----------------------------------------------------------------*     
      * blc-qtde-total      = cnvatv-qtde-total         (Nos 60 dias). *
      * blc-qtde-acesso-tot = cnvatv-qtde-acesso-tot    (Nos 60 dias). *
      * blc-qtde-dias       = Quantos dias houve vendas (Nos 60 dias). *
      *----------------------------------------------------------------*     



      *----------------------------------------------------------------*
      * Cadastro de Banco                                             *
      *----------------------------------------------------------------*
       FD BANCO.
       01 REG-BANCO.
	  03 BC-CHAVE.
	     05 BC-COD        PIC 9(003).
          03 BC-FANTASIA      PIC X(020).
	  03 BC-RAZAO         PIC X(040).
	  03 BC-AGENCIA.
	     05 BC-COD-AG     PIC X(010).
	     05 BC-NOM-AG     PIC X(020).
	     05 BC-END-AG     PIC X(040).
	     05 BC-CID-AG     PIC X(020).
	     05 BC-EST-AG     PIC X(002).
	  03 BC-TAR-TIT       PIC 9(002)V99.
	  03 BC-PROG          PIC X(010).
	  03 BC-SEQ-INI       PIC 9(001).
	  03 BC-SEQ-ATU       PIC 9(001).
	  03 BC-CONTROLE      PIC X(001).
	  03 BC-FILLER        PIC X(023).
      *      05 BC-CONTAB.
      *         10 BC-CTB-DB  PIC X(020).
      *         10 BC-CTB-CR  PIC X(020).
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
      * Arquivo : Cadastro de bloqueio de material SAP                 *
      * Objetivo: Manter informacoes dos bloqueios de materiais do SAP * 
      *           Cliente e Material                                   *
      *----------------------------------------------------------------*
       FD  BLOQM001.
       01  B001-REGISTRO.
	   03 B001-CHAVE.
	      05 B001-CLIENTE       PIC 9(06).
	      05 B001-PRODUTO       PIC 9(06).
	   03 B001-VALIDADE.
	      05 B001-DATA-INI.
	         07 B001-AA-INI     PIC 9(04).
	         07 B001-MM-INI     PIC 9(02).
	         07 B001-DD-INI     PIC 9(02).
	      05 B001-DATA-FIN.
	         07 B001-AA-FIN     PIC 9(04).
	         07 B001-MM-FIN     PIC 9(02).
	         07 B001-DD-FIN     PIC 9(02).
	   03 B001-FILLER           PIC 9(10).
      *----------------------------------------------------------------*
      * Arquivo : Bloqueio de de produto por grupo de cliente          *
      * Objetivo: Manter informacoes dos produtos bloqueados motivo  1 * 
      *           por grupo de Cliente                                 * 
      *----------------------------------------------------------------*
       FD  BLQGRUPO. 
       01  BLQGRP-REGISTRO.
	   03 BLQGRP-CHAVE.
	      05 BLQGRP-PRODUTO     PIC 9(06).
	      05 BLQGRP-GRUPO       PIC X(01).
           03 BLQGRP-QTDRESTO       PIC 9(07).
** Bloqueio por quantidade comprada no mes anterior.  08/07/2002 Otavio

       FD  BLQPROD.
       01  BLQP-REG.
           03 BLQP-CHAVE.
              05 BLQP-CODCLI           pic 9(06).
              05 BLQP-CODPROD          pic 9(06).
           03 BLQP-MES-ANTERIOR.
	      05 BLQP-MAIOR-COMPRA     PIC 9(05) occurs 12 times.
	      05 BLQP-TOT-MES          PIC 9(08) occurs 12 times.
           03 BLQP-FILLER              PIC 9(15).

      *----------------------------------------------------------------*
      *       Arquivo de zonas bloqueadas por condicao de venda        *
      *----------------------------------------------------------------*
       FD BLQZONA.
       01 BZ-REGISTRO.
          03 BZ-CHAVE.
             05 BZ-CONDICAO   PIC 9(02).
             05 BZ-ZONA       PIC 9(03).
      *
       FD  BOAVI.
       01  REG-BOAVI.
	   03  CH-BOAVI.
               05  EMPRESA-BOAVI        PIC 9(002).
	       05  CH2-BOAVI.
		   07  NFF-BOAVI        PIC 9(006).
                   07  MOTIVO-BOAVI     PIC 9(004).
		   07  CODPRO-BOAVI     PIC 9(006).
	   03  CH3-BOAVI.
	       05  CHAVE-CLI-BOAVI      PIC 9(006).
           03  CH4-BOAVI.
	       05  CLIENTE-CH4-BOAVI    PIC 9(006).
	       05  NFF-CH4-BOAVI        PIC 9(006).
	       05  CODPRO-CH4-BOAVI     PIC 9(006).
	   03  CH5-BOAVI.
	       05  DATA-CADASTRO-BOAVI  PIC 9(008).
	       05  ZONA-BOAVI           PIC 9(003).
	       05  HORA-CADASTRO-BOAVI  PIC 9(006). 
           03  FLAG-RET-BOAVI           PIC 9(001).
	   03  COD-RET-BOAVI            PIC X(002).
	   03  CFO-BOAVI                PIC 9(003).
	   03  QUANT-TOT-BOAVI          PIC 9(005).
	   03  QUANT-SAC-BOAVI          PIC 9(005).
	   03  QUANT-CNF-BOAVI          PIC 9(005).
	   03  PRECO-BOAVI              PIC 9(005)V99.
	   03  DESCONTO-BOAVI           PIC 9(002)V99.
           03  DATAENT-BOAVI            PIC 9(008).
	   03  DATA-CONF-BOAVI          PIC 9(008).
	   03  FLAG-IMP-BOAVI           PIC X(001).
           03  CONTATO-BOAVI            PIC X(010).
	   03  OPERADOR-BOAVI           PIC X(010).
	   03  HORTA-BOAVI              PIC X(001).
	   03  ORIGEM-BOAVI             PIC X(002).
	   03  DESTINO-BOAVI            PIC X(002).
	   03  NUMBO-BOAVI              PIC 9(006).
	   03  MOTIVO-ORI-BOAVI         PIC 9(004).
	   03  PERF-ES-BOAVI            PIC X(001).
	   03  CFO-NOVO-BOAVI           PIC 9(004).
	   03  LOTE-BOAVI               PIC X(010).
           03  FLAG-ONLINE              PIC X(001).
      *


      *********************************************************************
      * Arquivo - BO.IND                                                  *
      * Cadastro de Boletim de Ocorrencias                                *
      * Organizacao - Indexado                                            *
      * Chave de acesso - S-CHAVE-1                                       *
      * Tamanho - 198                                                     *
      * Obs.: 1- NUMERO-BO0 e' sempre = ZEROS                             *
      *       2- CT-PARECER e FI-PARECER tem os valores ' ' e 'N' somente *
      * 20/11/95 Trocar campos A-DATA-VENCTO por S-NUMERO-ENTR - Monica   *
      * 29/04/96 Inclusao da Chave Alternada e Numero da Duplicata.       *
      *          S-Chave-2 e FI-Duplicata.   -   Adriano.                 *
      * 22/05/97 Redefinicao dos campos de Nota Simples Remessa para      *
      *      Desconto Financeiro                                          *
      * 17/03/99 Troca de Todas as Datas p/Ano com 4 Posicoes. Adriano    *
      * Por motivo do Proj. Bahia, substituimos o conteudo do CT-MIN-PARECER 
      * para receber CD origem -> CT-CD-ORIGEM      -Calleia  - 17/09/04  *
      * 16/10/2009 - alteracao do campo c-cfo-235 passou bo-ol-edi        *
      *              passou a recebe tm5-ol-edi para bo-ol-edi            *
      *                                                          Marco    *
      *********************************************************************
       FD  BO.
       01  REG-BO.
           03 S-CHAVES.
              05 S-CHAVE-1.
                 10 NUMERO-BO         PIC 9(06).
           03 S-CHAVE-2.                        
              05 A-CLIENTE            PIC 9(06).
           03 S-MOTIVO.
              05 S-MOTIVO1            PIC 9(02).
              05 S-MOTIVO2            PIC 9(02).
           03 SAC.
              05 S-DATA-ENTRADA.
                 07 S-ANO-ENTRADA     PIC 9(04).     
                 07 S-MES-ENTRADA     PIC 9(02).     
                 07 S-DIA-ENTRADA     PIC 9(02).     
              05 S-HORA-ENTRADA.
                 07 S-HOR-ENTRADA     PIC 9(02).
                 07 S-MIN-ENTRADA     PIC 9(02).
              05 S-NUMERO-B1          PIC 9(06).
           03 ESTOQUE.
              05 C-PARECER            PIC X(01).
              05 C-DATA-PARECER.
                 07 C-ANO-PARECER     PIC 9(04).
                 07 C-MES-PARECER     PIC 9(02).
                 07 C-DIA-PARECER     PIC 9(02).
              05 C-HORA-PARECER.
                 07 C-HOR-PARECER     PIC 9(02).
                 07 C-MIN-PARECER     PIC 9(02).
           03 V-VENDAS.
              05 V-PARECER            PIC X(01).
              05 V-DATA-PARECER.
                 07 V-ANO-PARECER     PIC 9(04).
                 07 V-MES-PARECER     PIC 9(02).
                 07 V-DIA-PARECER     PIC 9(02).
              05 V-HORA-PARECER.
                 07 V-HOR-PARECER     PIC 9(01).
                 07 V-MIN-PARECER     PIC 9(01).
           03 FLAG-CFO-ICMS           PIC 9(01).
	   03 FLAG-CFO-SUBS           PIC 9(01).
           03 CONTABILIDADE.
              05 CT-PARECER           PIC X(01).
              05 CT-DATA-PARECER.
                 07 CT-ANO-PARECER    PIC 9(04).
                 07 CT-MES-PARECER    PIC 9(02).
                 07 CT-DIA-PARECER    PIC 9(02).
              05 CT-HORA-PARECER.
                 07 CT-HOR-PARECER    PIC 9(02).
**************** 07 CT-MIN-PARECER    PIC 9(02).
* Por motivo do Proj. Bahia, substituimos o conteudo do CT-MIN-PARECER 
* para receber CD origem -> CT-CD-ORIGEM         -Calleia   - 17/09/04   
* Alteracao do campo ct-cd-origem (bonificacao   - Marco    - 28/07/08 
* Tv 89 - (I) indusria tv 91 - (R) rebate - (C)artao de credito*    
*             05 CT-CD-ORIGEM.
	      05 CT-TIPOFAT          PIC X(01).
* INCLUSAO DA CAMPO CT-NOTA-SAP (S) - nota gerada no SAP 26/11/08 
	      05 CT-NOTA-SAP         PIC X(01).

           03 FINANCEIRO.
              05 FI-PARECER           PIC X(01).
              05 FI-DATA-PARECER.
                 07 FI-ANO-PARECER    PIC 9(04).
                 07 FI-MES-PARECER    PIC 9(02).
                 07 FI-DIA-PARECER    PIC 9(02).
              05 FI-HORA-PARECER.
                 07 FI-HOR-PARECER    PIC 9(02).
                 07 FI-MIN-PARECER    PIC 9(02).
              05 FI-DUPLICATA.                    
		 07 FI-DUPLIC         PIC 9(06).
		 07 FI-SEQ            PIC X(02).
           03 DIRETORIA.
              05 D-PARECER            PIC X(01).
              05 D-DATA-PARECER.
                 07 D-ANO-PARECER     PIC 9(04).
                 07 D-MES-PARECER     PIC 9(02).
                 07 D-DIA-PARECER     PIC 9(02).
              05 D-HORA-PARECER.
                 07 D-HOR-PARECER     PIC 9(02).
                 07 D-MIN-PARECER     PIC 9(02).
           03 NF-E-1-SR.
      *----------------------------------------------------------*
      *   EM 04/06/97 - CRIADO ITEM DE GRUPO C-NOTA-E1 COM INFORMACOES
      *      DA NOTA E1 POR SIMONE AC/ EUGENIO
      *----------------------------------------------------------*
	      05 C-NOTA-E1.
                 07 C-NUMERO-E1      PIC 9(06).
                 07 C-DATA-E1.
                    09 C-ANO-E1      PIC 9(04).
                    09 C-MES-E1      PIC 9(02).
                    09 C-DIA-E1      PIC 9(02).
                 07 C-HORA-E1.
                    09 C-HOR-E1      PIC 9(02).
                    09 C-MIN-E1      PIC 9(02).
      *----------------------------------------------------------*
      *  REDEFINIDO CAMPOS DE SIMPLES REMESSA PARA DESCONTO 
      *    FINANCEIRO - AC/ EUGENIO POR SIMONE
      *----------------------------------------------------------*
      *       05 NOTA-SIMPLES-REMESSA.
      *          07 C-NUMERO-SR       PIC 9(06).
      *          07 C-DATA-SR.
      *             09 C-ANO-SR       PIC 9(02).
      *             09 C-MES-SR       PIC 9(02).
      *             09 C-DIA-SR       PIC 9(02).
      *          07 C-HORA-SR.
      *             09 C-HOR-SR       PIC 9(02).
      *             09 C-MIN-SR       PIC 9(02).
      *       05 DESCONTO-FINANCEIRO REDEFINES NOTA-SIMPLES-REMESSA.

              05 BO-HORTA             PIC X(01).
              05 BO-TRANSMITIDO       PIC X(01).

              05 DESCONTO-FINANCEIRO.
		 07 C-VR-DESC-FIN     PIC 9(07)V9(04).
		 07 C-CREDITO         PIC X(01).
		 07 C-STATUS-BO27     PIC X(01).
*161009		 07 C-CFO-235         PIC X(01).
              05 BO-OL-EDI            PIC X(01).     
           03 N-CR-CP.
              05 F-NUMERO-CH          PIC 9(06).
              05 F-DATA-CH.
                 07 F-ANO-CH          PIC 9(04).
                 07 F-MES-CH          PIC 9(02).
                 07 F-DIA-CH          PIC 9(02).
              05 F-HORA-CH.
                 07 F-HOR-CH          PIC 9(02).
                 07 F-MIN-CH          PIC 9(02).
              05 F-NUMERO-NC          PIC 9(06).
              05 F-DATA-NC.
                 07 F-ANO-NC          PIC 9(04).
                 07 F-MES-NC          PIC 9(02).
                 07 F-DIA-NC          PIC 9(02).
              05 F-HORA-NC.
                 07 F-HOR-NC          PIC 9(02).
                 07 F-MIN-NC          PIC 9(02).
           03 BO-REFERENCIA.
              05 F-VALOR-BO           PIC 9(08)V99.
              05 F-DATA-PREV. 
                 07 F-ANO-PREV        PIC 9(04).
                 07 F-MES-PREV        PIC 9(02).
                 07 F-DIA-PREV        PIC 9(02).
           03 NF.
              05 S-NUMERO-NOTA        PIC 9(06).
              05 A-DATA-EMIS.
                 07 A-ANO-EMISSAO     PIC 9(04).
                 07 A-MES-EMISSAO     PIC 9(02).
                 07 A-DIA-EMISSAO     PIC 9(02).
              05 A-TM5DESCNF          PIC 9(02)V99.
              05 A-TM5PEDIDO          PIC 9(04).
              05 A-TM5VENDEDORES.
                 07 A-TM5ZONA         PIC 9(03).
                 07 A-TM5TELEVEND.
                    09 A-TM5VENDEDORA PIC X(02).
*                   09 A-TM5CHAMADA   PIC 9(01).
           03 S-NUMERO-ENTR           PIC 9(06).
      ***************************************************************
      *                    REGISTRO HEADER                          *
      *   Guarda as ultimas ocorrencias de Numero Bo, Nota Credito, *
      * Cheque, Nota Fiscal E-1                                     *
      ***************************************************************
       01  P-REGISTRO-BO.
           05 P-CHAVE-0.
              10 NUMERO-BO0              PIC 9(006).
           05 P-REGISTRO-1.
              10 P-NUMERO-BO             PIC 9(006).
              10 P-ULTIMA-NOTA-E1.
                 15 P-ULTNOTA-E1         PIC 9(006).
              10 P-ULTIMA-NOTA-SR.
                 15 P-ULTNOTA-SR         PIC 9(006).
              10 P-NCREDITO.
                 15 P-NC                 PIC 9(006).
              10 P-NCHEQUE.
                 15 P-NCH                PIC 9(006).
              10 P-COPIACH.
                 15 P-CPCH               PIC 9(006).
           05 P-REGISTRO-2.
              10 FILLER                  PIC X(186).
      *------------------------< Fim Bo.Cpy >-------------------------------*
      *----------------------------------------------------------* 
      * Arquivo : Cadastro de Banco para faturamento             *
      * Tamanho : 50 posicoes. 
      * Objetivo: Manter informacoes cadastro de banco (emissao) *
      *----------------------------------------------------------* 
       FD CADBANCO. 
       01 CADBCO-REGISTRO.
          03 cadbco-chave.
	     05 CADBCO-FILIAL      PIC 9(002).
          03 CADBCO-DADOS.              
	     05 CADBCO-BANCO       PIC 9(003).
	     05 CADBCO-DTULTALT.                
		07 CADBCO-ANOULT   PIC 9(004).
		07 CADBCO-MESULT   PIC 9(002).
		07 CADBCO-DIAULT   PIC 9(002).
	     05 CADBCO-HORAALT.              
	        07 CADBCO-HHALT    PIC 9(002).
		07 CADBCO-MMALT    PIC 9(002).
		07 CADBCO-SSALT    PIC 9(002).
             05 CADBCO-USUARIO     PIC X(010).
	     05 CADBCO-ID-USU      PIC X(003).
	     05 FILLER             PIC X(018).
      *----------------------------------------------------------------*     
      *                                                                *
      * Projeto ........: Controle de Caixas.                          *
      * Sistema ........: Expedicao                                    *
      * Objetivo .......: Movimentacao das Caixas.                     *
      * Eh povoado pelo :                                              *
      * Programador ....: Otavio                                       *
      * Data ...........: 21/02/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|
	   fd  cadcaixa.

	   01  ccx-reg.
	       03 ccx-chave.
		  05 ccx-num-caixa             pic 9(06).

	       03 ccx-tamanho-caixa            pic x(01). *> P=peq, G=gde.

	       03 ccx-data-pedido.
		  05 ccx-ano-pedido            pic 9(04).
		  05 ccx-mes-pedido            pic 9(02).
		  05 ccx-dia-pedido            pic 9(02).
               03 ccx-pedido                   pic 9(05).
               03 ccx-espelho                  pic 9(03).
               03 ccx-cod-cliente              pic 9(06).
	       03 ccx-carro.
		  05 ccx-ano-carro             pic 9(02).
		  05 ccx-mes-carro             pic 9(02).
		  05 ccx-dia-carro             pic 9(02).
		  05 ccx-car-carro             pic 9(05).

	       03 ccx-saida. *> data da criacao do relacionamento com o cliente
		  05 ccx-data-sai.
		     07 ccx-ano-sai            pic 9(04).
		     07 ccx-mes-sai            pic 9(02).
		     07 ccx-dia-sai            pic 9(02).

	       03 ccx-busca. *> data que o relatorio de busca foi impresso.
		  05 ccx-data-bus.
		     07 ccx-ano-bus            pic 9(04).
		     07 ccx-mes-bus            pic 9(02).
		     07 ccx-dia-bus            pic 9(02).
                  05 ccx-proto-bus             pic 9(06).

	       03 ccx-baixa. *> data que retornou a Profarma, ou
			     *>      baixa manual 
		  05 ccx-data-bai.
		     09 ccx-ano-bai            pic 9(04).
	             09 ccx-mes-bai            pic 9(02).
		     09 ccx-dia-bai            pic 9(02).
             
	       03 ccx-filial-sap               pic x(04).
	       03 ccx-data-inclusao.  
		  05 ccx-ano-inc               pic 9(04).
		  05 ccx-mes-inc               pic 9(02).
               03 ccx-motivo-his               pic x(03).
	       03 ccx-CD-destino               pic 9(02).
	       03 ccx-filler                   pic 9(03).
*
*   Sistema.....: Stock Locator - Embarque
*   Arquivo.....: Cadastro de Docas           
*                 fisico "/d/dados/caddocas"            
*   Analista....:                           
*   Logistica...: Ederson
*   Data Inicio.: 12/02/2015
*

       FD caddocas. 
       01 dcs-REG.
          03 dcs-CHAVE.
             05 dcs-codigo           PIC x(02).
          03 dcs-DESCRICAO           PIC X(15).
	  03 dcs-situacao            pic x(01). *>A=ativo, B=bloquedo.

          03 dcs-LOG.
             05 dcs-INCLUSAO.
		07 dcs-data-hora-inc.
                   09 dcs-DATA-INC   PIC 9(08).
                   09 dcs-HORA-INC   PIC 9(06).
                07 dcs-usuario-inc   PIC X(10).
                07 dcs-login-inc     PIC X(10).

             05 dcs-ALTERACAO.
		07 dcs-data-hora-alt.
                   09 dcs-DATA-ALT   PIC 9(08).
                   09 dcs-HORA-ALT   PIC 9(06).
                07 dcs-usuario-alt   PIC X(10).
                07 dcs-login-alt     PIC X(10).

         


*
*   Arquivo.....: Cadastro de Funcionarios           
*                 fisico "/d/dados/cadfunci"            
*   Data Inicio.: 16/03/2009
*

       FD cadfunci.
       01 cfnc-REG.
          03 cfnc-CHAVE.
             05 cfnc-COD-MATR        PIC 9(06).

          03 cfnc-nome               pic x(40).
          03 cfnc-senha              pic x(06).
          03 cfnc-situacao           pic x(01).

          03 cfnc-FILLER.
             05 cfnc-FILLER1         PIC 9(17).
             05 cfnc-FILLER2         PIC 9(18).

          03 cfnc-LOG.
             05 cfnc-INCLUSAO.
                07 cfnc-DATA-INC     PIC 9(08).
                07 cfnc-HORA-INC     PIC 9(06).
                07 cfnc-USR-INC      PIC X(10).
             05 cfnc-ALTERACAO.
                07 cfnc-DATA-ALT     PIC 9(08).
                07 cfnc-HORA-ALT     PIC 9(06).
                07 cfnc-USR-ALT      PIC X(10).




       FD  CADGEN2.

       01  CG2-REG.
	   03 CG2-CHAVE.
	      05 CG2-CODDCB.
		 07 CG2-CODDCB6     PIC X(06).
		 07 CG2-CODDCB2     PIC X(02).
		 07 CG2-CODDCB1     PIC X(01).
           03 CG2-NOME              PIC X(30).
	   03 CG2-LISTA             PIC X(02).
	   03 CG2-DT-ULT-ALT.              
	      05 CG2-ANO.
		 07 CG2-SEC         PIC 9(02).
		 07 CG2-ANO2        PIC 9(02).
              05 CG2-MES            PIC 9(02).
              05 CG2-DIA            PIC 9(02).
           03 CG2-FILLER            PIC 9(10).

       FD  CADGEN.

       01  CGN-REG.
	   03 CGN-CHAVE.
	      05 CGN-ESTADO         PIC 9(02).
	      05 CGN-CODPROD        PIC 9(06).
	      05 CGN-CODDCB.
		 07 CGN-CODDCB6     PIC X(06).
		 07 CGN-CODDCB2     PIC X(02).
		 07 CGN-CODDCB1     PIC X(01).
           03 CGN-SEQUENCIA         PIC 9(01).
	   03 CGN-FILLER            PIC 9(10).
      *----------------------------------------------------------------*
      * Arquivo : Cadastro de Produtos OL                              *
      * Objetivo: Manter informacoes dos produtos OL, para serem cri-  * 
      *           ticados na manutencao de TVs OL de produto.          *
      *----------------------------------------------------------------*
       FD CADPRODOL.
       01 PRODOL-REG.
	  03 PRODOL-CHAVE.
	     05 PRODOL-PRODUTO   PIC  9(06).
          03 PRODOL-FILLER       PIC  9(10). 

      *---------------------------------------------------------------*
      *            Projeto Resid.                                     *
      *                                                               *
      * Objetivo ...: Cadastar Rede ou cliente no criterio de Resid.  *
      * Sistema ....: WMS                                             *
      * Logistica ..:                                                 *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 02/07/2015                                      *
      *                                                               *
      *---------------------------------------------------------------*

      *|---|-----------------------------------------------------------|
       fd  cadresid.

       01  crs-reg.
	   03 crs-chave.
	      05 crs-tipo             pic x(01). *>R=rede, C=cliente
	      05 crs-codcli           pic 9(06).
	      05 filler redefines     crs-codcli.
		 07 crs-rede-fixo     pic 9(01).
		 07 crs-codrede       pic 9(05).

           03 crs-validade.
	      05 crs-data-val-inicio.
		  07 crs-ano-val-ini  pic 9(04).
		  07 crs-mes-val-ini  pic 9(02).
		  07 crs-dia-val-ini  pic 9(02).

	      05 crs-data-val-final. 
		  07 crs-ano-val-fin  pic 9(04).
		  07 crs-mes-val-fin  pic 9(02).
		  07 crs-dia-val-fin  pic 9(02).

      *|---|-----------------------------------------------------------|
	   03 crs-flag-pbm            pic x(01).
      *|---|-----------------------------------------------------------|
	   03 filler                  pic 9(17).
      *|---|-----------------------------------------------------------|
	   03 crs-log-inclusao. 
	      05 crs-data-hora-inc.
		 07 crs-data-inc.
		    09 crs-ano-inc    pic 9(04).
		    09 crs-mes-inc    pic 9(02).
		    09 crs-dia-inc    pic 9(02).
		 07 crs-hora-inc.
		    09 crs-hor-inc    pic 9(02).
		    09 crs-min-inc    pic 9(02).
		    09 crs-seg-inc    pic 9(02).
              05 crs-login-inc        pic x(08).
              05 crs-usuario-inc      pic x(08).
              05 crs-programa-inc     pic x(08).
	   
      *|---|-----------------------------------------------------------|
	   03 crs-log-alteracao.        
	      05 crs-data-hora-alt.
		 07 crs-data-alt.
		    09 crs-ano-alt    pic 9(04).
		    09 crs-mes-alt    pic 9(02).
		    09 crs-dia-alt    pic 9(02).
		 07 crs-hora-alt.
		    09 crs-hor-alt    pic 9(02).
		    09 crs-min-alt    pic 9(02).
		    09 crs-seg-alt    pic 9(02).
              05 crs-login-alt        pic x(08).
              05 crs-usuario-alt      pic x(08).
              05 crs-programa-alt     pic x(08).
	   
      *|---|-----------------------------------------------------------|



         


      *|---|-----------------------------------------------------------|
       
       fd  cadstk281.

       01  stk281-reg.
	   03 stk281-chave.
              05 stk281-produto       pic 9(06).

           03 stk281-qtde-informada   pic 9(07).
	   03 stk281-qtde-saldo       pic 9(07).

	   03 stk281-data-hora-inc. 
	      05 stk281-data-inc.
	         07 stk281-ano-inc    pic 9(04).
	         07 stk281-mes-inc    pic 9(02).
	         07 stk281-dia-inc    pic 9(02).
	      05 stk281-hora-inc.
	         07 stk281-hh-inc     pic 9(02).
	         07 stk281-mm-inc     pic 9(02).
	         07 stk281-sg-inc     pic 9(02).
	         07 stk281-ms-inc     pic 9(02).
           03 stk281-login-inc        pic x(10).
           03 stk281-usuario-inc      pic x(10).
           03 stk281-programa-inc     pic x(10).
         
	   03 stk281-data-hora-alt. 
	      05 stk281-data-alt.
	         07 stk281-ano-alt    pic 9(04).
	         07 stk281-mes-alt    pic 9(02).
	         07 stk281-dia-alt    pic 9(02).
	      05 stk281-hora-alt.
	         07 stk281-hh-alt     pic 9(02).
	         07 stk281-mm-alt     pic 9(02).
	         07 stk281-sg-alt     pic 9(02).
	         07 stk281-ms-alt     pic 9(02).
           03 stk281-login-alt        pic x(10).
           03 stk281-usuario-alt      pic x(10).
           03 stk281-programa-alt     pic x(10).


      *---|-------------------------------------------------------*
      * Incluido o campos cadus-itinerario - reemissao 26/08/2021 *
      *---|-------------------------------------------------------*
       FD CADUSUARIOS.
       01 CADUS-REGISTRO.
          03 CADUS-CHAVE.
             05 CADUS-USUARIO       PIC X(10).
          03 CADUS-NOME             PIC X(40).
	  03 CADUS-SETOR            PIC X(20).
	  03 CADUS-ADMISSAO.
	     05 CADUS-ANO           PIC 9(04).
	     05 CADUS-MES           PIC 9(02).
	     05 CADUS-DIA           PIC 9(02).
          03 CADUS-RAMAL            PIC 9(04).
	  03 CADUS-FILIAL           PIC X(04).
	  03 CADUS-MATRICULA        PIC 9(06).
	  03 CADUS-EXCLUSAO.  
	     05 CADUS-EXCLU-ANO     PIC 9(04).
	     05 CADUS-EXCLU-MES     PIC 9(02).
	     05 CADUS-EXCLU-DIA     pic 9(02).
	  03 CADUS-REMISSAO.  
	     05 CADUS-ESPELHO       PIC X(01).
	     05 CADUS-ROMANEIO      PIC X(01).
	     05 CADUS-ETQ-ROMANEIO  PIC X(01).
 	     05 CADUS-ITINERARIO    PIC X(01).
*	     05 CADUS-FILLER        PIC X(01).
 	  03 CADUS-hora-acesso.
             05 cadus-HH-acesso     pic 9(02).
             05 cadus-MM-acesso     pic 9(02).
             05 cadus-SS-acesso     pic 9(02).
 	  03 cadus-data-acesso.                     
             05 cadus-ano-acesso    pic 9(04).
             05 cadus-mes-acesso    pic 9(02).
             05 cadus-dia-acesso    pic 9(02).
 	  03 cadus-motivo           PIC X(02).

      ******************************************************************
      * Arquivo - CADVAR01 - Arquivo de Variacoes de Rotas.            *
      * Organizacao - Indexada.                                        *
      * Analista: Eugenio          Programador: Adriano.      12/07/96 *
      ******************************************************************
       FD  CADVAR.
       01  REG-CV.
	   05  CV-CHAVE-I.
	       10  CV-AM.
		   15 CV-ANO           PIC 9(04).
		   15 CV-MES           PIC 9(02).
		   15 CV-DIA           PIC 9(02).
               10  CV-ROTA-I           PIC 9(03).   
           05  CV-ROTA-F               PIC 9(03).   
      *-----------------------------------------------------------*
      *       Cadastro de Grupo de categoria do produto           *
      *-----------------------------------------------------------*
       FD CATEG-GRP.
       01 CATEG-GRP-REG.
	  03 GRP-CHAVE.     
	     05 GRP-COD      PIC 9(02).
          03 GRP-DESCR       PIC X(30).
	  03 GRP-FILLER      PIC X(10).
      *-----------------------------------------------------------*
      *          Cadastro de categoria do produto                 *
      *-----------------------------------------------------------*
       FD CATEGORIA.
       01 CATEGORIA-REG.
	  03 CATEG-CHAVE.   
	     05 CATEG-COD    PIC 9(03).
          03 CATEG-DESCR     PIC X(30).
	  03 CATEG-GRUPO     PIC 9(02).
	  03 CATEG-FILLER    PIC X(10).

      *|---|---------------------------|-------------------------------|
      *            Projeto Alterar lote e/ou vencimento da etiqueta.  *
      *                                                               *
      * Objetivo ...: Cadastar Rede ou cliente para permitir alterar. *
      * Sistema ....: WMS                                             *
      * Logistica ..: Raphael Tavares'                                *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 14/03/2019                                      *
      *                                                               *
      *|---|---------------------------|-------------------------------|
      *  Inclusao da tipo fornecedor.              05/06/2019 Otavio  *
      *|---|---------------------------|-------------------------------|
       fd  cdaltlot.

       01  cal-reg.
	   03 cal-chave.
	      05 cal-tipo             pic x(01). *>R=rede, C=cliente,    
	      05 cal-codcli           pic 9(06). *>F=fornecedor

	      05 filler redefines     cal-codcli.
		 07 cal-rede-fixo     pic 9(01).
		 07 cal-codrede       pic 9(05).

              05 filler redefines     cal-codcli.
		 07 cal-forn-fixo     pic 9(02).
		 07 cal-codFornecedor pic 9(04).

	   03 cal-ativo               pic x(01). *> S=sim, N=nao
	   03 cal-filler              pic 9(18).

      *|---|-----------------------------------------------------------|
	   03 cal-log-inclusao. 
	      05 cal-data-hora-inc.
		 07 cal-data-inc.
		    09 cal-ano-inc    pic 9(04).
		    09 cal-mes-inc    pic 9(02).
		    09 cal-dia-inc    pic 9(02).
		 07 cal-hora-inc.
		    09 cal-hor-inc    pic 9(02).
		    09 cal-min-inc    pic 9(02).
		    09 cal-seg-inc    pic 9(02).
              05 cal-login-inc        pic x(10).
              05 cal-usuario-inc      pic x(10).
              05 cal-programa-inc     pic x(10).
	   
      *|---|-----------------------------------------------------------|
	   03 cal-log-alteracao.        
	      05 cal-data-hora-alt.
		 07 cal-data-alt.
		    09 cal-ano-alt    pic 9(04).
		    09 cal-mes-alt    pic 9(02).
		    09 cal-dia-alt    pic 9(02).
		 07 cal-hora-alt.
		    09 cal-hor-alt    pic 9(02).
		    09 cal-min-alt    pic 9(02).
		    09 cal-seg-alt    pic 9(02).
              05 cal-login-alt        pic x(10).
              05 cal-usuario-alt      pic x(10).
              05 cal-programa-alt     pic x(10).
	   
      *|---|-----------------------------------------------------------|



         


      *|---|---------------------------|-------------------------------|
      *    Projeto : Cadastro de clientes com diferencial.             *
      *                                                                *
      *    Objetivo: Cadastro de clientes ou rede para diferenciar dos *
      * demais.                                                        *
      *                                versao 1.0 Otavio 02Fev2023     *
      *                                                                *
      *|---|---------------------------|-------------------------------|
       fd  cdclired.

       01  ccrd-reg.
	   03 ccrd-chave.
	      05 ccrd-tpProjeto        pic x(02). *> TR=Torrent
	      05 ccrd-tpClenteRede     pic x(01). *> C=cliente/R=rede
	      05 ccrd-codigo           pic 9(06). 
	      05 filler redefines ccrd-codigo.
		 07 ccrd-rede-zero     pic 9(01).
		 07 ccrd-rede          pic 9(05).
	      05 filler redefines ccrd-codigo.
		 07 ccrd-cliente       pic 9(06).

           03 ccrd-ativo               pic x(01). *> S=sim/N=nao

	   03 ccrd-logInclusao.
	      05 ccrd-anoInc           pic 9(04).
	      05 ccrd-mesInc           pic 9(02).
	      05 ccrd-sequenciaInc     pic 9(06).

	   03 ccrd-logAlteracao.
	      05 ccrd-anoAlt           pic 9(04).
	      05 ccrd-mesAlt           pic 9(02).
	      05 ccrd-sequenciaAlt     pic 9(06).

    
      *----------------------------------------------------------------*
      * Arquivo : Chave de acesso da DANFE                             *
      * Objetivo: Manter informacoes da chave de acesso da NFe         *
      *----------------------------------------------------------------*
       FD chavenfe.
       01 chavenfe-reg.  
          03 chavenfe-acesso.
	     05 chavenfe-aces01          pic 9(04).
	     05 chavenfe-aces02          pic 9(04).
	     05 chavenfe-aces03          pic 9(04).
	     05 chavenfe-aces04          pic 9(04).
	     05 chavenfe-aces05          pic 9(04).
	     05 chavenfe-aces06          pic 9(04).
	     05 chavenfe-aces07          pic 9(04).
	     05 chavenfe-aces08          pic 9(04).
	     05 chavenfe-aces09          pic 9(04).
	     05 chavenfe-aces10          pic 9(04).
	     05 chavenfe-aces11          pic 9(04).
	  03 chavenfe-data-inc. 
	     05 chavenfe-aa-inc          pic 9(04).
	     05 chavenfe-mm-inc          pic 9(02).
	     05 chavenfe-dd-inc          pic 9(02).
          03 chavenfe-hora-inc.
	     05 chavenfe-hh-inc          pic 9(02).
	     05 chavenfe-mn-inc          pic 9(02).
	     05 chavenfe-ss-inc          pic 9(02).
          03 chavenfe-usuario            pic x(10).
	  03 chavenfe-data-ret.
	     05 chavenfe-aa-ret          pic 9(04).
	     05 chavenfe-mm-ret          pic 9(02).
	     05 chavenfe-dd-ret          pic 9(02).
          03 chavenfe-hora-ret.
	     05 chavenfe-hh-ret          pic 9(02).
	     05 chavenfe-mm-ret          pic 9(02).
	     05 chavenfe-ss-ret          pic 9(02).
          03 chavenfe-cod-ret            pic 9(02).
	  03 chavenfe-placa              pic x(08).
	  
	  03 chavenfe-filler             pic x(02).
      *----------------------------------------------------------------*
      * chavenfe-data-inc: data de inclusao                            *
      * chavenfe-data-ret: data de retorno do SAP                      *
      * chavenfe-cod-ret : codigo de retorno do SAP, ver descricao no  *
      *                    programa chavenfe01                         *
      * chavenfe-placa   : Placa do veiculo informada no inicio da lei-*
      *                    tura da chave NFE                           *
      *----------------------------------------------------------------*
      *|---|---------------------------|-------------------------------|
      *                      Projeto LEAN.                            *
      *                                                               *
      * Objetivo ...: Criar chave para o endereco de linha.           *
      * Sistema ....: WMS                                             *
      * Logistica ..:                                                 *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 04/Jul/2019                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

       fd  chendlin.

       01  celn-reg.
	   03 celn-endLinha            pic x(09).
	   03 filler redefines celn-endLinha.
              05 celn-estacao          pic 9(02).
              05 celn-setor            pic 9(03).
              05 celn-modulo           pic x(01).
              05 celn-canal            pic 9(03).

           03 celn-codProduto          pic 9(06).
      *--------------------------------------------------------*
      * Arquivo : /d/dados/cidadeUF                            *
      * Objetivo: Manter informacoes das cidades  e codigo para*
      *           integracao com gerenciadora de risco OPENTECH*
      *--------------------------------------------------------*
       fd  cidadeUF.
       01  cidadeUF-reg.
	   03 cidadeuf-chave.
	      05 cidadeUF-UF         pic x(02).
	      05 cidadeUF-cidade     pic x(20).
	   03 cidadeuf-codigo        pic 9(05).
	   03 cidadeuf-filler        pic 9(18).
      *-----------------------------------------------------------*
      *          Cadastro de Classificacao de Clientes            *
      *-----------------------------------------------------------*
       FD CLASSIF.
       01 CLASSIF-REG.
	  03 CLASSIF-CHAVE.
	     05 CLASSIF-COD  PIC X(02).
          03 CLASSIF-DESCR   PIC X(50).
      *-----------------------------------------------------------*
      *----------------------------------------------------------------*     
      *                                                                *
      * Projeto ........: Controle de Caixas.                          *
      * Sistema ........: Expedicao                                    *
      * Objetivo .......: Cadastro de redes clientes.                  *
      * Eh povoado pelo :                                              *
      * Programador ....: Otavio                                       *
      * Data ...........: 21/03/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|
	   fd  clicaixa.

	   01  clc-reg.
	       03 clc-chave.
		  05 clc-tipo-chave            pic x(01). *> R=rede/C=cliente

		  05 clc-cliente               pic 9(06).

		  05 filler redefines          clc-cliente.
		     07 clc-zeros              pic 9(02).
		     07 clc-rede               pic 9(04).

               03 clc-ativo                    pic x(01). *> S=ativo/N=nao ativ

               03 clc-log-inclusao.
		  05 clc-data-hora-inc.
		     07 clc-data-inc.
			09 clc-ano-inc         pic 9(04).
			09 clc-mes-inc         pic 9(02).
			09 clc-dia-inc         pic 9(02).
		     07 clc-hora-inc.
			09 clc-hor-inc         pic 9(02).
			09 clc-min-inc         pic 9(02).
			09 clc-seg-inc         pic 9(02).
                  05 clc-usuario-inc           pic x(08).
                  05 clc-login-inc             pic x(08).
                  05 clc-programa-inc          pic x(08).

               03 clc-log-alterado.
		  05 clc-data-hora-alt.
		     07 clc-data-alt.
			09 clc-ano-alt         pic 9(04).
			09 clc-mes-alt         pic 9(02).
			09 clc-dia-alt         pic 9(02).
		     07 clc-hora-alt.
			09 clc-hor-alt         pic 9(02).
			09 clc-min-alt         pic 9(02).
			09 clc-seg-alt         pic 9(02).
                  05 clc-usuario-alt           pic x(08).
                  05 clc-login-alt             pic x(08).
                  05 clc-programa-alt          pic x(08).

	       03 clc-filler                   pic 9(18).
      *----------------------------------------------------------------*
      *                Arquivo de Clientes para o De-para              *
      *                                                                *
      *----------------------------------------------------------------*
       FD clidpara.  
       01 cpr-REG.
          03 cpr-CHAVE.
	     05 cpr-TIPOCHAVE       PIC X(01).
	     05 cpr-CODCLI          PIC 9(06).
	     05 FILLER REDEFINES   cpr-CODCLI.
	        07 cpr-REDE.
	           09 cpr-FILLER    PIC 9(01).
                   09 cpr-CODREDE   PIC 9(05). 

          03 cpr-filler-01          pic 9(18).

	  03 cpr-inclusao.
	     05 cpr-data-sis-inc.   
	        07 cpr-ano-sis-inc   pic 9(04).
	        07 cpr-mes-sis-inc   pic 9(02).
	        07 cpr-dia-sis-inc   pic 9(02).

             05 cpr-hora-sis-inc.
	        07 cpr-hh-sis-inc    pic 9(02).
	        07 cpr-mm-sis-inc    pic 9(02).
	        07 cpr-ss-sis-inc    pic 9(02).
 
	     05 cpr-usr-hp-inc       pic x(10).
	     05 cpr-usr-cobol-inc    pic x(10).

	  03 cpr-alteracao.
	     05 cpr-data-sis-alt.   
	        07 cpr-ano-sis-alt   pic 9(04).
	        07 cpr-mes-sis-alt   pic 9(02).
	        07 cpr-dia-sis-alt   pic 9(02).

             05 cpr-hora-sis-alt.
	        07 cpr-hh-sis-alt    pic 9(02).
	        07 cpr-mm-sis-alt    pic 9(02).
	        07 cpr-ss-sis-alt    pic 9(02).
 
	     05 cpr-usr-hp-alt       pic x(10).
	     05 cpr-usr-cobol-alt    pic x(10).
   


      ******************************************************************
      * Arquivo : CLIECLF                                              * 
      * Objetivo: Arq de caracteristica do cliente carregado pelo SAP  *
      * Organiza: Indexada.                                            *
      * Analista: Adilson / Marco                                      *
      ******************************************************************
       FD  CLIENTECLF.
       01  REG-CLIECLF.
	   03  CLIECLF-CHAVE.
	       07 CLIECLF-CLIENTE      PIC 9(06). 
	   03  CLIECLF-CRM             PIC X(15).    
	   03  CLIECLF-ASSENT          PIC X(15).
	   03  CLIECLF-ALV-LOCAL       PIC X(15).
           03  CLIECLF-EMI-LOCAL.
	       05 CLIECLF-ELOCAL-AA    PIC 9(04).
	       05 CLIECLF-ELOCAL-MM    PIC 9(02).
	       05 CLIECLF-ELOCAL-DD    PIC 9(02).
	   03  CLIECLF-VAL-LOCAL.
	       05 CLIECLF-VLOCAL-AA    PIC 9(04).
	       05 CLIECLF-VLOCAL-MM    PIC 9(02).
	       05 CLIECLF-VLOCAL-DD    PIC 9(02).
           03  FILLER                  PIC X(33).
      ******************************************************************
      * CLIECLF-CRM      : Descricao do CRM                            *
      * CLIECLF-ASSENT   : Assentimento sanitario                      *
      * CLIECLF-ALV-LOCAL: Numero do alvara local do cliente           *
      * CLIECLF-EMI-LOCAL: Data de emissao do alvara local             *
      * CLIECLF-VAL-LOCAL: Data de validade do alvara local            *
      ******************************************************************
      *----------------------------------------------------------*
      * Arquivo : Cadastro de intervalo de faixas                *
      * Objetivo: Manter informacoes com o intervalo das faixas  *
      *           para desconto progressivo da condicao.         *
      *----------------------------------------------------------*
       FD CONDFAIXA.
       01 FAIXA-REGISTRO.
          03 FAIXA-CHAVE.
	     05 FAIXA-COND         PIC 9(02).
	  03 FAIXA-INTERVALO       OCCURS  10 TIMES.
             05 FAIXA-INI          PIC 9(05).
	     05 FAIXA-FIN          PIC 9(05).
      *----------------------------------------------------------* 
      * Arquivo : Cadastro de grade de condicoes                 *
      * Objetivo: Manter informacoes das limitacoes de cada cond *
      *----------------------------------------------------------* 
       FD CONDGRADE.
       01 GRADE-REGISTRO.
          03 GRADE-CHAVE.
	     05 GRADE-COND    PIC 9(03).
          03 GRADE-DADOS.               
	     05 GRADE-USUARIO  PIC X(01).
	     05 GRADE-PRAZO    PIC 9(03).
	     05 GRADE-TIPOPZ   PIC 9(01).
	     05 GRADE-PARCELA  PIC X(01).
	     05 GRADE-OL       PIC X(01).
*-> 051009   05 GRADE-C-APRES  PIC X(01).
	     05 GRADE-D-PONTO  PIC X(01).
*-> 020209   05 GRADE-ENTR-D1  PIC X(01). 
	     05 GRADE-QUEBRAPZ PIC X(01). 
	     05 GRADE-LIVRE    PIC X(01).
	     05 GRADE-DESCMAX  PIC X(01).
	     05 GRADE-ALTERA   PIC 9(01).
	     05 GRADE-VEND-LAB PIC X(01).
	     05 GRADE-DCLIVRE  PIC X(01).
	     05 GRADE-OL-BIS   PIC X(01).
	     05 GRADE-CND-PROM PIC X(01).
      *----------------------------------------------------------* 
      * GRADE-QUEBRAPZ : Flag que informa se TV sera submetido a *
      *                  critica de quebra de prazo              *
      *----------------------------------------------------------* 
      *----------------------------------------------------------* 
      * Arquivo : Cadastro de grade de CNDTC                     *
      * Objetivo: Manter informacoes de restricoes de CNDTC      *
      *----------------------------------------------------------* 
       FD CONDTPCLI.
       01 CNDTC-REGISTRO.
          03 CNDTC-CHAVE.
	     05 CNDTC-TPCLI      PIC 9(02).
          03 CNDTC-DADOS.                    
	     05 CNDTC-USUARIOS   PIC X(01). 
	     05 CNDTC-FILLER     PIC X(10).       
      *------------------------------------------------------------* 
      * Arquivo : Cadastro de condicoes de venda parcelada         *
      * Objetivo: Manter informacoes de numero de parcelas com os  *
      *           seus respecitivos prazos e percentuais           *
      *                                                            *
      *  OBS: IMPORTANTE. Todas as alteracoes feitas nessa BOK, as *
      *       mesmas tem que ser feitas na BOK CONDVDPARORIG.CPY.  *
      *  Calleia  -  16/12/2003.                                   *
      *------------------------------------------------------------* 
       FD CONDVDPAR.
       01 VDPAR-REGISTRO.
          03 VDPAR-CHAVE.
	     05 VDPAR-COND         PIC 9(02).
	  03 VDPAR-PARCELA OCCURS  6 TIMES.
             05 VDPAR-PRAZO        PIC 9(03).
	     05 VDPAR-PERCENT      PIC 9(02)V99.



*
*   Sistema.....: Conferencia Espelho Qtde e/ou Lote
*   Arquivo.....: Cadastro Cliente para conferencia.
*                 fisico "/d/dados/confclie"         
*   Analista....: Sergio/Otavio
*   Logistica...: Abel
*   Data Inicio.: 27/01/2006
*   Obj. se  o cliente do espelho estiver cadastrado neste arquivo, tarja preta
* nele.

       FD CONFclie. 
       01 ccl-REG.
          03 ccl1-CHAVE.
             05 ccl-FILIAL           PIC 9(02).
	     05 ccl-cliente          pic 9(06).

	  03 ccl-Conf-lote           pic x(01).

          03 ccl-LOG.
             05 ccl-INCLUSAO.
                07 ccl-DATA-INC      PIC 9(08).
                07 ccl-HORA-INC      PIC 9(06).
                07 ccl-USR-INC       PIC X(08).
             05 ccl-ALTERACAO.
                07 ccl-DATA-ALT      PIC 9(08).
                07 ccl-HORA-ALT      PIC 9(06).
                07 ccl-USR-ALT       PIC X(08).
          03 ccl-FILLER.
             05 ccl-FILLER1          PIC 9(18).


      *---------------------------------------------------------------*
      *            Projeto Conferencia inteligente                    *
      *                                                               *
      * Objetivo ...: Cadastar Rede ou cliente no criterio conferencia*
      *               obrigatoria                                     *
      * Sistema ....: WMS                                             *
      * Logistica ..:                                                 *
      * Gerente ....:                                                 *
      * Programador.: Adilson                                         *
      * Data .......: 07/02/2018                                      *
      *                                                               *
      *---------------------------------------------------------------*

       fd confclired.
       01 ccl-reg.
          03 ccl-chave.
             05 ccl-filial           PIC 9(02).
	     05 ccl-tipo             pic x(01).
	     05 ccl-cliente          pic 9(06).
             05 filler redefines ccl-cliente.
		07 ccl-rede-fixo     pic 9(01).
		07 ccl-codred        pic 9(05).
	  
	  03 ccl-Conf-lote           pic x(01).

          03 ccl-LOG.
             05 ccl-INCLUSAO.
                07 ccl-DATA-INC      PIC 9(08).
                07 ccl-HORA-INC      PIC 9(06).
                07 ccl-USR-INC       PIC X(08).
             05 ccl-ALTERACAO.
                07 ccl-DATA-ALT      PIC 9(08).
                07 ccl-HORA-ALT      PIC 9(06).
                07 ccl-USR-ALT       PIC X(08).
          03 ccl-FILLER.
             05 ccl-FILLER1          PIC 9(18).

*
*   Sistema.....: Conferencia Espelho Qtde e/ou Lote
*   Arquivo.....: Cadastro de Endereco da Linha
*                 fisico "/d/dados/confende"         
*   Analista....: Sergio/Otavio
*   Logistica...: Abel
*   Data Inicio.: 25/01/2006
*   Obj. se o espelho ultrapassar ao percentural marca-lo com tarja preta 

       FD CONFENDE. 
       01 cee-REG.
          03 cee-CHAVE.
             05 cee-FILIAL           PIC 9(02).
  
	     05 cee-endereco.
		07 cee-estacao       pic 9(02).

	  03 cee-conf-lote           pic x(01).
	  03 cee-perc-conf           pic 9(02)v99.

          03 cee-LOG.
             05 cee-INCLUSAO.
                07 cee-DATA-INC      PIC 9(08).
                07 cee-HORA-INC      PIC 9(06).
                07 cee-USR-INC       PIC X(08).
             05 cee-ALTERACAO.
                07 cee-DATA-ALT      PIC 9(08).
                07 cee-HORA-ALT      PIC 9(06).
                07 cee-USR-ALT       PIC X(08).
          03 cee-FILLER.
             05 cee-FILLER1          PIC 9(18).

*
*   Sistema.....: Conferencia Espelho Qtde e/ou Lote
*   Arquivo.....: Cadastro de Endereco da Linha
*                 fisico "/d/dados/confends"         
*   Analista....: Sergio/Otavio
*   Logistica...: Abel
*   Data Inicio.: 25/01/2006
*   Obj. se o espelho ultrapassar ao percentural marca-lo com tarja preta 

       FD CONFENDS. 
       01 ces-REG.
          03 ces-CHAVE.
             05 ces-FILIAL           PIC 9(02).
  
	     05 ces-endereco.
		07 ces-estacao       pic 9(02).
		07 ces-setor         pic 9(03).

	  03 ces-conf-lote           pic x(01).

          03 ces-LOG.
             05 ces-INCLUSAO.
                07 ces-DATA-INC      PIC 9(08).
                07 ces-HORA-INC      PIC 9(06).
                07 ces-USR-INC       PIC X(08).
             05 ces-ALTERACAO.
                07 ces-DATA-ALT      PIC 9(08).
                07 ces-HORA-ALT      PIC 9(06).
                07 ces-USR-ALT       PIC X(08).
          03 ces-FILLER.
             05 ces-FILLER1          PIC 9(18).


      *---------------------------------------------------------------*
      *            Projeto Conferencia inteligente                    *
      *                                                               *
      * Objetivo ...: Cadastar parametros de conferencia inteligente  *
      * Sistema ....: WMS                                             *
      * Logistica ..:                                                 *
      * Gerente ....:                                                 *
      * Programador.: Adilson                                         *
      * Data .......: 07/02/2018                                      *
      *                                                               *
      *---------------------------------------------------------------*

       fd confinteli.
       01 cci-reg.
          03 cci-chave.
             05 cci-estacao          PIC 9(02).
	  
	  03 cci-perm-conf-er        pic x(01).
          03 cci-percent             pic 9(03)v99.
	  03 cci-num-acesso          pic 9(03).
	  03 cci-num-unid            pic 9(04).
	  03 cci-ativo               pic x(01).
	  
	  03 cci-log.
             05 cci-inclusao.
                07 cci-data-inc      PIC 9(08).
                07 cci-hora-inc      PIC 9(06).
                07 cci-usr-inc       PIC X(08).
             05 cci-alteracao.
                07 cci-data-alt      PIC 9(08).
                07 cci-hora-alt      PIC 9(06).
                07 cci-usr-alt       PIC X(08).
          03 cci-filler.
             05 cci-filler1          PIC 9(18).

*
*   Sistema.....: Conferencia Espelho Qtde e/ou Lote
*   Arquivo.....: Cadastro Produto para conferencia.
*                 fisico "/d/dados/confprod"         
*   Analista....: Sergio/Otavio
*   Logistica...: Abel
*   Data Inicio.: 30/01/2006
*   Obj. se  o produto do espelho estiver cadastrado neste arquivo, tarja preta
* nele.

       FD CONFprod. 
       01 ccp-REG.
          03 ccp-CHAVE.
             05 ccp-FILIAL           PIC 9(02).
	     05 ccp-produto          pic 9(06).

	  03 ccp-Conf-lote           pic x(01).

          03 ccp-LOG.
             05 ccp-INCLUSAO.
                07 ccp-DATA-INC      PIC 9(08).
                07 ccp-HORA-INC      PIC 9(06).
                07 ccp-USR-INC       PIC X(08).
             05 ccp-ALTERACAO.
                07 ccp-DATA-ALT      PIC 9(08).
                07 ccp-HORA-ALT      PIC 9(06).
                07 ccp-USR-ALT       PIC X(08).
          03 ccp-FILLER.
             05 ccp-FILLER1          PIC 9(18).

*
*   Sistema.....: Conferencia Espelho Qtde e/ou Lote
*   Arquivo.....: Cadastro Rota para conferencia.
*                 fisico "/d/dados/confrota"         
*   Analista....: Sergio/Otavio
*   Logistica...: Abel
*   Data Inicio.: 26/01/2006
*   Obj. se a rota do espelho estiver cadastrado neste arquivo, tarja preta
* nele.

       FD CONFROTA. 
       01 crt-REG.
          03 crt-CHAVE.
             05 crt-FILIAL           PIC 9(02).
	     05 crt-rota             pic 9(04).

	  03 crt-Conf-lote           pic x(01).

          03 crt-LOG.
             05 crt-INCLUSAO.
                07 crt-DATA-INC      PIC 9(08).
                07 crt-HORA-INC      PIC 9(06).
                07 crt-USR-INC       PIC X(08).
             05 crt-ALTERACAO.
                07 crt-DATA-ALT      PIC 9(08).
                07 crt-HORA-ALT      PIC 9(06).
                07 crt-USR-ALT       PIC X(08).
          03 crt-FILLER.
             05 crt-FILLER1          PIC 9(18).

      *|---|---------------------------|-------------------------------|
      *                  Projeto LEAN - Conferencia Zero.             *
      *                                                               *
      * Objetivo ...: Cadastro de conferencia para viabilizar a redu- *
      *               cao da conferencia.                             *
      * Sistema ....: WMS                                             *
      * Logistica ..: Gustavo Pires.                                  *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 11/Nov/2019                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|
      *    Inclusao da Rede e Prioridade.         04/Mar/2022 Otavio   *
      *|---|---------------------------|-------------------------------|

       fd  confZero.
       01  czr-reg.
	   03 czr-chave.
	      05 czr-tpCampo           pic x(01). *>Rota, Cliente, Usuario,
						  *>reDe ou Prioridade.
              05 czr-campo             pic x(10).
	      05 filler redefines czr-campo.
		 07 czr-rotaZeros      pic 9(07).
		 07 czr-rota           pic 9(03).
	      05 filler redefines czr-campo.
		 07 czr-clienteZero    pic 9(04).
		 07 czr-cliente        pic 9(06).
	      05 filler redefines czr-campo.
		 07 czr-usuario        pic x(10).
	      05 filler redefines czr-campo.
		 07 czr-redeZero       pic 9(05).
		 07 czr-rede           pic 9(05).
	      05 filler redefines czr-campo.
		 07 czr-prioridadeZero pic 9(08).
		 07 czr-prioridade     pic 9(02).

      *|---|---------------------------|-------------------------------|
	   03 czr-qtdeEspAconf         pic 9(04).
 
	   03 czr-logInclusao.
	      05 czr-AnoInc            pic 9(04).
	      05 czr-MesInc            pic 9(02).
	      05 czr-lgcz-sequenciaInc pic 9(06).
              
	   03 czr-logAlteracao.
	      05 czr-AnoAlt            pic 9(04).
	      05 czr-MesAlt            pic 9(02).
	      05 czr-lgcz-sequenciaAlt pic 9(06).
              
*-------------------------------------------------------------------*
*   Sistema.....: Pagamento Antecipado                              *
*   Arquivo.....: Saldo                                             * 
*                 fisico "/d/dados/contacor"                        * 
*   Analista....: Otavio/Adilson/Marco                              *
*   Data Inicio.: 09/03/2005                                        *
*-------------------------------------------------------------------*

       FD CONTACOR. 
       01 CCS-REG.
          03 CCS-CHAVE.
             05 CCS-CODCLIENTE       PIC 9(06).
          03 CCS-SALDO               PIC S9(10)V99.
          03 CCS-VENDA-DIA           PIC 9(10)V99.
          
          03 CCS-LOG.
             05 CCS-INCLUSAO.
                07 CCS-DATA-INC      PIC 9(08).
                07 CCS-HORA-INC      PIC 9(06).
                07 CCS-USR-INC       PIC X(08).
             05 CCS-ALTERACAO.
                07 CCS-DATA-ALT      PIC 9(08).
                07 CCS-HORA-ALT      PIC 9(06).
                07 CCS-USR-ALT       PIC X(08).
          03 CCS-FILLER.
             05 CCS-FILLER1          PIC 9(10).
      *--------------------------------------------------------------*
      *       Arquivo de controle dos carro                          *
      *--------------------------------------------------------------*
       fd contrcarro.
       01 ctc-registro.
	  03 ctc-chave.
	     05 ctc-programa    pic x(10).
          03 ctc-carro          pic 9(06).
      *--------------------------------------------------------------*

*---------------------------------------------------------------------------*
*                    Arquivo Controle de cubetas.                           *
*---------------------------------------------------------------------------*
       FD CUBETAS.
       01  CUB-REGISTRO.
	   03 CUB-CHAVE.
              05 CUB-NUMERO          PIC 9(06).
           03 CUB-ROTA               PIC 9(03).
	   03 CUB-TURNO              PIC 9(01).
           03 CUB-CLIENTE            PIC 9(06).
	   03 CUB-DATASAI.
	      05 CUB-ANOSAI          PIC 9(04).
	      05 CUB-MESSAI          PIC 9(02).
	      05 CUB-DIASAI          PIC 9(02).
	   03 CUB-PEDIDO             PIC 9(04).
	   03 CUB-ESPELHO            PIC 9(03).
	   03 CUB-OBS                PIC X(30).
	   03 CUB-USUARIO            PIC X(08).
	   03 CUB-TAM-CUBETA         PIC 9(01).
	   03 CUB-FILLER             PIC 9(05).

      *----------------------------------------------------------------*
      * Arquivo de Desconto Especial.                      08/11/99    *
      *  Organizacao Indexada.                                         *
      *  Chave...............:                                         *
      *  Tamanho.............: 90                                      *
      *----------------------------------------------------------------*
       FD DESCNF.    
       01 REG-DESCNF.   
          05 DESCNF-CHAVE-1.
	     10 DESCNF-CLIENTE           PIC 9(06).
	     10 DESCNF-EMIS.   
	        15 DESCNF-EMI-AA         PIC 9(04).
	        15 DESCNF-EMI-MM         PIC 9(02).
	        15 DESCNF-EMI-DD         PIC 9(02).
	     10 DESCNF-NOTA              PIC 9(06).
          05 DESCNF-VALOR                PIC 9(09)V99.
          05 DESCNF-FLAG                 PIC 9(01).
          05 DESCNF-APLICACAO.                        
	     10 DESCNF-DUPL.                          
	        15 DESCNF-DUPLICATA      PIC 9(06).                          
	        15 DESCNF-SEQUENCIA      PIC 9(02).                          
	     10 DESCNF-VENC.   
	        15 DESCNF-VEN-AA         PIC 9(04).
	        15 DESCNF-VEN-MM         PIC 9(02).
	        15 DESCNF-VEN-DD         PIC 9(02).
	     10 DESCNF-DT-APL. 
	        15 DESCNF-APL-AA         PIC 9(04).
	        15 DESCNF-APL-MM         PIC 9(02).
	        15 DESCNF-APL-DD         PIC 9(02).
	  05 DESCNF-FILLER               PIC X(34).
      *----------------------------------------------------------------*
      *  DESCNF-FLAG = 0  - Desconto Liberado p/Aplicacao.             *
      *              = 1  -    "     Aplicado em Duplicata.            *
      *              = 2  -    "                                       *
      *              = 3  -    "                                       *
      *              = 9  - Desconto Cancelado.                        *
      *----------------------------------------------------------------*
                                                                        
      *----------------------------------------------------------------*
      *                Arquivo de diferencas da I2/Fidelize            *
      *                                                                *
      *----------------------------------------------------------------*
       FD DIFBBS.    
       01 BBS-REG.
          03 BBS-CHAVE.
	     05 BBS-TIPOCHAVE     PIC X(01).
	     05 BBS-CODCLI        PIC 9(06).
	     05 FILLER REDEFINES BBS-CODCLI.
	        07 BBS-REDE.
	           09 BBS-FILLER  PIC 9(01).
                   09 BBS-CODREDE PIC 9(05). 
          03 BBS-TIPO-QTDE        PIC X(01).
          03 BBS-TIPO-PRECO       PIC X(01).
          03 BBS-TIPO-LAYOUT      PIC X(03).
          03 BBS-DATA.
             05 BBS-ANO           PIC 9(04).
             05 BBS-MES           PIC 9(02).
             05 BBS-DIA           PIC 9(02).
          03 BBS-USR              PIC X(10).
	  03 BBS-EXP-IMP          PIC X(01).
	  03 BBS-SIGLA            PIC X(03).
          03 BBS-SEQUENCIA        PIC 9(01).
          03 BBS-FILLER2          PIC X(56).


** BBS-TIPOCHAVE        => R=rede ou C=cliente.
** BBS-CODIGO           => codigo do cliente(R=c3rede-novo ou C=c3codigo).
** BBS-CODREDE          => codigo da rede(c3rede-novo).
** BBS-TIPO-QTDE        => F=somente as faltas, A=somente aceito, K=ambos.
** BBS-TIPO-PRECO       => R=preco repassado, V=preco nao repassado.
** BBS-TIPO-LAYOUT      => I01=unico I2, F01=unico Fidelize, E01=EDM, 
**                         M01=master, M02=modem, D01=Drogao, C01=CAASP.
** BBS-DATA             => data do sistema operacional.
** BBS-USR              => descricao do usuario.
** BBS-EXP-IMP          => na inclusao ou alteracao (E), na atualizacao automa
**                         tica nas outras filiais(I).
** BBS-FILLER2          => reservado para usu futuro.

** obs.                 => toda vez que for alterado vai ser gravado no log
**                         /f/fechaMM/logerroMM
      *----------------------------------------------------------------*     
      *                                                                *
      * Projeto ........: Protocolo de devolucao                       *
      * Sistema ........: Expedicao                                    *
      * Objetivo .......: Cadastrar os motivos de cancelamento.        *
      * Eh povoado pelo :                                              *
      * Programador ....: Marco                                        *
      * Data ...........: 19/07/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|
	   fd  dschiscancel.

	   01  dsch-reg.
	       03 dsch-chave.
		  05 dsch-cod-descricao          pic 9(02).

               03 dsch-descricao                pic x(30).

               03 dsch-ativo                    pic x(01). *>Sim/Nao
 
	       03 dsch-log-inclusao.
		  05 dsch-data-hora-inc.
		     07 dsch-data-inc.
			09 dsch-ano-inc         pic 9(04).
			09 dsch-mes-inc         pic 9(02).
			09 dsch-dia-inc         pic 9(02).
                     07 dsch-hora-inc.
			09 dsch-hor-inc         pic 9(02).
			09 dsch-min-inc         pic 9(02).
			09 dsch-seg-inc         pic 9(02).
                  05 dsch-login-inc             pic x(08).
                  05 dsch-usuario-inc           pic x(08).
                  05 dsch-programa-inc          pic x(08).

	       03 dsch-log-alterado.
		  05 dsch-data-hora-alt.
		     07 dsch-data-alt.
			09 dsch-ano-alt         pic 9(04).
			09 dsch-mes-alt         pic 9(02).
			09 dsch-dia-alt         pic 9(02).
                     07 dsch-hora-alt.
			09 dsch-hor-alt         pic 9(02).
			09 dsch-min-alt         pic 9(02).
			09 dsch-seg-alt         pic 9(02).
                  05 dsch-login-alt             pic x(08).
                  05 dsch-usuario-alt           pic x(08).
                  05 dsch-programa-alt          pic x(08).

	       03 dsch-filler                   pic 9(18).
 
       fd eanmult.
       01 reg-em.
	  03 em-chave. 
	     05 em-ean 		pic 9(13). 
          03 em-chave2.
	     05 em-produto      pic 9(06).
          

      *----------------------------------------------------------------*
      *  ARQUIVO.........:  Cadastro de Empresas                       *
      *  ORGANIZACAO.....:  Indexado                                   *
      *  CHAVE DE ACESSO.:  EMP-CHAVE                                  *
      *  TAMANHO.........:                                             *
      *  DATA............:  Novo Lay-out 26/03/2001                    *
      *----------------------------------------------------------------*
      * Obs. Importante..:  Toda vez que for feito alteracao neste cpy *
      *      alterar tambem /d/ncpy/empresas.wor                       *
      *----------------------------------------------------------------*
      * Obs. Importante..:  O campo emp-fax pra a ser usado com        *
      *                     emp-cnpj-lc              25/05/2022 Marco  *
      *----------------------------------------------------------------*
       FD EMPRESA.
       01 EMP-REG.
	  03 EMP-CHAVE            PIC 9(02).
	  03 EMP-ESTADO           PIC 9(02).
	  03 EMP-TIPOEMP          PIC 9(01).
	  03 EMP-NUMEMP           PIC 9(01).
	  03 EMP-ESTEMP           PIC X(02).
          03 EMP-RAZAO            PIC X(35).
	  03 EMP-ENDERECO         PIC X(35).
	  03 EMP-BAIRRO           PIC X(15).
	  03 EMP-CIDADE           PIC X(15).
	  03 EMP-CEP.
	     05 EMP-CEP-NUM       PIC 9(05).
	     05 EMP-CEP-CONT      PIC 9(03).
          03 EMP-CGC              PIC X(18).
	  03 EMP-INSC-EST         PIC X(15).
          03 EMP-APELIDO          PIC X(02).
          03 EMP-BLQFAT           PIC X(01).
      *==============*
      * Informacoes sobre a empresa onde sera faturado o MEDICAMENTO
      *==============*
	  03 EMP-FATURAMENTO-M.
	     05 EMP-CODEMPFAT-M.
		07 EMP-ESTADOFAT-M  PIC 9(02).
		07 EMP-TIPOEMPFAT-M PIC 9(01).
		07 EMP-NUMEMPFAT-M  PIC 9(01).
	     05 EMP-ESTEMPFAT-M     PIC X(02).
	     05 EMP-CODIGOFAT-M     PIC 9(02).
          03 EMP-MAQUINA.
	     05 EMP-MAQPROD         PIC X(08).
	     05 EMP-MAQBACK         PIC X(08).                          
	     05 EMP-MAQDESEN        PIC X(08).                         
          03 EMP-DIRETORIO-FONTE    PIC X(02).
      *==============*
      * Informacoes sobre a empresa onde sera faturado a PERFUMARIA
      *==============*
	  03 EMP-FATURAMENTO-P.
	     05 EMP-CODEMPFAT-P.
		07 EMP-ESTADOFAT-P  PIC 9(02).
		07 EMP-TIPOEMPFAT-P PIC 9(01).
		07 EMP-NUMEMPFAT-P  PIC 9(01).
	     05 EMP-ESTEMPFAT-P     PIC X(02).
	     05 EMP-CODIGOFAT-P     PIC 9(02).
          03 EMP-MAQCOMPILACAO      PIC X(08).
          03 EMP-DESCR              PIC X(05).
      *==============*
      * Informacoes adicionais da empresa                            
      *==============*
	  03 EMP-RAZAO-COMPLETA   PIC X(050).
	  03 EMP-AUTORIZ-FUNCION  PIC X(020).
	  03 EMP-LICENCA-FUNCION  PIC X(020).
	  03 EMP-AUTORIZ-ESPECIAL PIC X(020).
	  03 EMP-REPRES-LEGAL     PIC X(040).
	  03 EMP-FARMAC-RESPONS   PIC X(040).
	  03 EMP-CRF-FARMAC       PIC X(010).
	  03 EMP-CODIGO-PFC3      PIC 9(006).
          03 EMP-TELEFONE         PIC X(014).
*         03 EMP-FAX              PIC X(014).
          03 EMP-cnpj-lc          PIC X(014).
          03 EMP-PLACA            PIC X(007).
	  03 EMP-arquivo          PIC X(002).
	  03 EMP-DIVISIONAL       PIC X(030).
	  03 EMP-FILLER           PIC X(011).
*-----------------------------------------------------------------------------*
*                    Cadastro das empresas PROFARMA                           *
*-----------------------------------------------------------------------------*
*                                                                             *
*     EMP-ESTADO  : Em que estado esta; de acordo com o arq. ESTADOS          *
*     EMP-TIPOEMP : Tipo da Empresa;                                          *
*                   M - matriz                                                *
*                   F - filial                                                *
*                   P - polo                                                  *
*                                                                             *
*     EMP-NUMEMP  : Numero da empresa no estado;                              *
*              Ex.: 1 - So existe uma empresa neste estado                    *
*                                                                             *
*                                                                             *
*     EMP-APELIDO : Apelido para os pedidos de televendas                     *
*              Ex.: rj - Pedidos da Matriz Rio de Janeiro                     *
*                   mg - Pedidos da Filial Belo Horizonte                     *
*                   es - Pedidos do Polo Espirito Santo                       *
*                   sp - Pedidos do Polo Sao Paulo                            *
*                   bf - Pedidos do Polo Barao de Sao Felix                   *
*                                                                             *
* EMP-BLQFAT : Flag de bloqueio para esta empresa                             *
*              S - Sim   N - Nao                                              *
*                                                                             *
* EMP-FATURAMENTO : Informacoes da empresa de onde e faturado                 *
*     EMP-CODEMPFAT - Codigo da empresa onde sera faturado                    *
*     EMP-ESTEMPFAT - Estado da empresa onde sera faturado                    *
*                                                                             *
* EMP-MAQUINA : Endereco das maquinas                                         *
*     EMP-MAQPROD  - Endereco da maquina de producao (ex.: e45a)              *
*     EMP-MAQBACK  - Endereco da maquina de backup (ex.: d200)                *
*     EMP-MAQDESEN - Endereco da maquina de desenvolvimento (ex.: f10a)       *
*                                                                             *
*     EMP-MAQCOMPILACAO  - Maquina que sera compilado para implantacao        *
*                           (se nao houver, assume o .int na maquina chamada  *
*                            - programa fontes.)                              *
*     EMP-DESCR          - Campo para definir melhor o apelido da Filial      *
*                                                                             *
*                                                                             *
*     EMP-RAZAO............: Descricao completa da razao social da empresa    *
*     EMP-AUTORIZ-FUNCION..: Autorizacao de Funcionamento.                    *
*     EMP-LICENCA-FUNCION..: Licenca de  Funcionamento (Alvara).              *
*     EMP-AUTORIZ-ESPECIAL.: Autorizacao Especial                             *
*     EMP-REPRES-LEGAL.....: Representante Legal                              *
*     EMP-FARMAC-RESPONS...: Farmaceutico Responsavel                         *
*     EMP-CRF-FARMAC.......: CRF do Farmaceutico Responsavel                  *
*     EMP-CODICO-PFC3......: Codigo Cliente Tranferencia                      *
*     EMP-PLACA............: Placa do veiculo de Transbordo                   *
*     EMP-DIVISIONAL.......: Divisional de Logistica                          *
*                                                                             *
* OBS: No PFC5 consta o codigo da empresa que sera chave deste arquivo        *
*-----------------------------------------------------------------------------*
*
*   Sistema.....: Faturamento / expedicao
*   Arquivo.....: Cadastro endereco de entrega.             
*                 fisico "/d/dados/endentrg"            
*   Analista....: Sergio
*   Logistica...: Abel
*   Data Inicio.: 17/07/2006
*
*   Obs. Nota fiscal impresso com endereco do pfc3 e itinerario com o 
*        endereco do endentrg.                                      
*

       FD endentrg.  
       01 eet-REG.
          03 eet-CHAVE.
	     05 eet-CODCLIENTE       PIC 9(06).

          03 eet-ENDERECO            PIC X(032).
          03 eet-MUNICIPIO.
             04 eet-CIDADE           PIC X(020).
             04 eet-BAIRRO           PIC X(020).
          03 eet-ESTADO              PIC X(002).
          03 eet-CEP                 PIC X(008).
          03 eet-TELEFONE            PIC X(012).

          03 eet-LOG.
             05 eet-INCLUSAO.
                07 eet-DATA-INC      PIC 9(08).
                07 eet-HORA-INC      PIC 9(06).
                07 eet-USR-INC       PIC X(08).
             05 eet-ALTERACAO.
                07 eet-DATA-ALT      PIC 9(08).
                07 eet-HORA-ALT      PIC 9(06).
                07 eet-USR-ALT       PIC X(08).

*------------------------------------------------------------------------------*
*                      Tabela de parametros de Estado                          *
* OBS.: Toda vez que alterar esta BOK tem que fazer o mesmo na BOK estados.wor *
*------------------------------------------------------------------------------*
       FD ESTADOS.
       01 EST-REGISTRO.
	  03 EST-CHAVE.
	     05 EST-UF          PIC X(02).
          03 EST-DESCRICAO      PIC X(20).
          03 EST-CHAVE-ALT.  
	     05 EST-CODIGO      PIC 9(02).
	  03 EST-BLQFAT         PIC X(01).
	  03 EST-BLQTEL         PIC X(01).
          03 EST-DEBCRED        PIC X(01).
	  03 EST-ALQINT         PIC 9(03)V99.
	  03 EST-ALQEXT         PIC 9(03)V99.
	  03 EST-DEBCRED-TRANSF PIC X(01).
	  03 EST-VALMIN-MEDI    PIC 9(05)V99.
          03 EST-VALMIN-PERF    PIC 9(05)V99.
	  03 EST-PCMCPV         PIC X(01).
	  03 EST-GRAVA-PZDCFOR  PIC X(01).
	  03 EST-VALHORTA-MEDI  PIC 9(05)V99.
          03 EST-VALHORTA-PERF  PIC 9(05)V99.
	  03 EST-FILLER         PIC X(12).
*------------------------------------------------------------------------------*
* EST-UF - Unidade federativa                                                  *
*                                                                              *
* EST-DESCRICAO - Descricao do Estado                                          *
*                                                                              *
* EST-CODIGO  - Codigo numerico do estado para utilizar em tabelas             *
*                                                                              *
* EST-BLQFAT  - Flag de bloqueio de faturamento para este estado (S ou N)      *
*                                                                              *
* EST-BLQTEL  - Flag de bloqueio de pedidos pelo televendas (S ou N)           *
*                                                                              *
* EST-DEBCRED - Sistema de Debito/Credito de Icms (S ou N)                     *
*                                                                              *
* EST-ALQINT  - Valor da aliquota utilizada dentro do estado                   *
*                                                                              *
* EST-ALQEXT  - Valor da aliquota utilizada fora do estado                     *
*                                                                              *
* EST-DEBCRED-TRANSF - Sistema de Debito/Credito de Icms para NF de Transf S/N *
*                                                                              *
* EST-VALMIN-MEDI - Valor Minimo de Medicamento                                *
*                                                                              *
* EST-VALMIN-PERF - Valor Minimo de Perfumaria                                 *
*                                                                              *
* EST-PCMCPV - Valor ha ser impresso no corpo da NF. M=Pc.Maximo/V=Pc.Venda    *
*                                                                              *
* EST-VALHORTA-MEDI - valor minimo de Medicamento para Interestadual           *
*                                                                              *
* EST-VALHORTA-PERF - valor minimo de Perfumaria  para Interestadual           *
*                                                                              *
* Exemplo:                                                                     *
*  UF DESCRICAO       Co B D   Int.  Ext.                                      *
*  -- --------------- -- - - ------ ------                                     *
*  RJ Rio de Janeiro  01 N N  18,00  12,00                                     *
*  MG Minas Gerais    02 N N  18,00  12,00                                     *
*  SP Sao Paulo       03 N N  18,00  12,00                                     *
*  ES Espirito Santo  04 N N  17,00   7,00                                     *
*------------------------------------------------------------------------------*

      *---------------------------------------------------------------*
      *            Projeto WMS uma etiqueta por lote de entrada       *
      *                                                               *
      * Objetivo ...: Cadastrar produto ou subsort para impressao  de *
      *               uma etiqueta por lote de entrada                *
      * Sistema ....: WMS                                             *
      * Logistica ..:                                                 *
      * Gerente ....:                                                 *
      * Programador.: Adilson                                         *
      * Data .......: 05/04/2018                                      *
      *                                                               *
      *---------------------------------------------------------------*

       fd etiqprofor.
       01 epf-reg.
          03 epf-chave.
	     05 epf-tipo             pic x(01).
	     05 epf-produto          pic 9(06).
             05 filler redefines epf-produto.
		07 epf-forne-fixo    pic 9(02).
		07 epf-fornecedor    pic 9(04).
	  
          03 epf-LOG.
             05 epf-INCLUSAO.
                07 epf-DATA-INC      PIC 9(08).
                07 epf-HORA-INC.
		   09 epf-hora-hh    PIC 9(02).
		   09 epf-hora-mm    PIC 9(02).
		   09 epf-hora-ss    PIC 9(02).
                07 epf-USR-INC       PIC X(08).
          03 ccl-FILLER.
             05 epf-FILLER1          PIC 9(18).

      *----------------------------------------------------------------*
      * Arquivo : Cadastro de Excecao                                  *
      * Objetivo: Sao (R)edes ou (C)lientes que nao se levara em conta * 
      *                 o horario para impressao dos espelhos          *
      *                                                                *
      * Manutencao desta tabela: fat004.cbl                            *
      * 11/01/12                                                Jorge  * 
      *----------------------------------------------------------------*
      * 26/11/2014 Inclusao do campo ECC-RELATORIO que sera utilizado  *
      *            pelo progr. peduni.cbl-Relat. de Juncao de Espelhos *
      *                                                         Jorge  *
      *----------------------------------------------------------------*
       FD  EXCECAO.
       01  ECC-REGISTRO.
	   03 ECC-CHAVE.
	      05 ECC-RC          PIC X(01).
 	      05 ECC-CODIGO      PIC 9(09).

	   03 ECC-DT-INC         pic 9(08).
	   03 ECC-DT-INC-RE REDEFINES ECC-DT-INC.
	      05 ECC-AA-INC      PIC 9(04).
	      05 ECC-MM-INC      PIC 9(02).
	      05 ECC-DD-INC      PIC 9(02).

           03 ECC-USUARIO-INC    PIC X(10).

	   03 ECC-DT-CAN         pic 9(08).
	   03 ECC-DT-CAN-RE REDEFINES ECC-DT-CAN.
	      05 ECC-AA-CAN      PIC 9(04).
	      05 ECC-MM-CAN      PIC 9(02).
	      05 ECC-DD-CAN      PIC 9(02).

           03 ECC-USUARIO-CAN    PIC X(10).

	   03 ECC-RELATORIO      PIC X(01).
	   03 ECC-FILLER         PIC X(19).



*--> ECC-RELATORIO: (R)elatorio, (E)spelho ou (T)odos.	  
      *------------------------------------------------------------*
       FD  EXCMSGN.   
       01  EXGN-REG.
           03 EXGN-CHAVE.
	      05 EXGN-TIPO           PIC x(01). *> R=cod rede, C=cod cliente
	      05 EXGN-CODCLI         PIC 9(06).
	      05 FILLER REDEFINES EXGN-CODCLI.
		 07 EXGN-REDE-FIXO   pic 9(01).
		 07 EXGN-COD-REDE    pic 9(05).

           03 EXGN-DESCRICAO         PIC X(39).

	   03 EXGN-log-exclusao.
	      05 EXGN-usuario-exc    pic x(10).
	      05 EXGN-login-exc      pic x(10).
	      05 EXGN-data-exc       pic 9(08).
	      05 filler redefines EXGN-data-exc.
		 07 EXGN-anoExc      pic 9(04).
		 07 EXGN-mesExc      pic 9(02).
		 07 EXGN-diaExc      pic 9(02).
	      05 EXGN-hora-exc       pic 9(08).
	      

      *---------------------------------------------------------------*
      * Objetivo ...: Cadastar excresid excluidos pelo esp113 para uso*
      *               do sap050.                                      *
      * Programador.: Jorge                                           *
      * Data .......: 03/01/2023                                      *
      *---------------------------------------------------------------*

       fd  excresid.

       01  exr-reg.
	   03 exr-chave.
	      05 exr-tipo           pic x(01). *>R=rede, C=cliente
	      05 exr-codcli         pic 9(06).
	      05 filler redefines   exr-codcli.
		 07 exr-rede-fixo   pic 9(01).
		 07 exr-codrede     pic 9(05).

	   03 exr-log-exclusao.
	      05 exr-usuario-exc    pic x(10).
	      05 exr-login-exc      pic x(10).
	      05 exr-data-exc       pic 9(08).
	      05 filler redefines exr-data-exc.
		 07 exr-anoExc      pic 9(04).
		 07 exr-mesExc      pic 9(02).
		 07 exr-diaExc      pic 9(02).
	      05 exr-hora-exc       pic 9(08).

      *|---|---------------------------|-------------------------------|
      *    Inclusao de quebra do romaneio por restricao de validade.   *
      *                                            25/Out/2019 Otavio  *
      *|---|---------------------------|-------------------------------|

       fd  excvalid.

       01  excv-reg.
	   03 excv-chave.
	      05 excv-tipoReg          pic x(01). *>Rede ou Cliente.
              05 excv-codCli           pic 9(06).

	      05 filler redefines excv-codCli.
		 07 excv-redeFixo      pic 9(01).
		 07 excv-codRede       pic 9(05).

              05 excv-produto          pic 9(06).

	   03 excv-ativo               pic x(01). *>Sim / Nao            
	       
      *|---|---------------------------|-------------------------------|
	   03 excv-dataValTemporario.                                     
	      05 excv-anoVlTmp         pic 9(04).                      
	      05 excv-mesVlTmp         pic 9(02).
	      05 excv-diaVlTmp         pic 9(02).

           03 excv-filler              pic 9(04).

**13Nov20  03 excv-logInclusao.
**13Nov20     05 excv-mesLogInc        pic 9(02).
**13Nov20     05 excv-anoLogInc        pic 9(04).
**13Nov20     05 excv-sequenciaInc     pic 9(06). *>logcabi.cpy/logcabz.cpy
	   
	   03 excv-logAlteracao.
	      05 excv-mesLogAlt        pic 9(02).
	      05 excv-anoLogAlt        pic 9(04).
	      05 excv-sequenciaAlt     pic 9(06). *>logcabi.cpy/logcabz.cpy


      *------------------------------------------------------------*
      * Arquivo : Cadastro Fast Track (Acesso Rapido)              *  
      * Objetivo: Manter informacoes com codigo reduzido associado *
      *           ao codigo do produto para acesso rapido do Telev *
      *------------------------------------------------------------*
       FD  FASTRACK.  
       01  FST-REGISTRO.
           03 FST-CHAVE.
	      05 FST-CODIGO        PIC 9(02).
           03 FST-CODPROD          PIC 9(06).

      *----------------------------------------------------------------*
      * Arquivo de Feriados                                            *
      *----------------------------------------------------------------*
       FD FAT-FER.
       01 REG-FAT-FER.
	  03 FF-CHAVE.
	     05 FF-DATA.
	        07 FF-ANO   PIC 9(04).
	        07 FF-MES   PIC 9(02).
	        07 FF-DIA   PIC 9(02).
             05 FF-MENU     PIC 9(02).
          03 FF-DIA-SEM     PIC X(07).
          03 FF-DESCRICAO   PIC X(25).
	  02 FF-FILLER      PIC X(10).
      *----------------------------------------------------------------*
      *---------------------------------------------------------------*
      *              Inventario - Geografica - Contagem Online.       *
      *                                                               *
      * Projeto:     Configura numero da proxima contagem.            *
      * Gerencia:    Inventario                                       *
      * Data:        06/06/2016.                                      *
      * Programador: Otavio                                           *
      *                                                               *
      *---------------------------------------------------------------*
      *    Projeto Geografica 2023.                                   *
      * Inclusao do campo grp-senha.              22Fev2023 Otavio    *
      * /home/otavio/logistica/Geografica                             *
      *|---|-----------------------------------------------------------|
       fd  geogrpar.

       01  grp-reg.
	   03 grp1-chave.
	      05 grp-data-contagem.
		 07 grp-ano-contagem    pic 9(04).
		 07 grp-mes-contagem    pic 9(02).
		 07 grp-dia-contagem    pic 9(02).
              05 grp-num-contagem       pic 9(02).
	      05 grp-tpGeografica       pic x(01). *>N=normal, P=praty

      *|---|---------------------------|-------------------------------|
	   03 grp-senhaEmbFec          pic 9(04).  

	   03 grp-log-inclusao.
              05 grp-usuario-inc        pic x(10).
              05 grp-login-inc          pic x(10).
	      05 grp-programa-inc       pic x(08).
	      05 grp-data-hora-inc.
	         07 grp-data-inc.
		    09 grp-ano-inc      pic 9(04).
		    09 grp-mes-inc      pic 9(02).
		    09 grp-dia-inc      pic 9(02).
	         07 grp-hora-inc.
		    09 grp-hor-inc      pic 9(02).
		    09 grp-min-inc      pic 9(02).
		    09 grp-seg-inc      pic 9(02).

	   03 grp-log-alteracao.      *> o ultimo que alterou
              05 grp-usuario-alt        pic x(10).
              05 grp-login-alt          pic x(10).
	      05 grp-programa-alt       pic x(08).
	      05 grp-data-hora-alt.
	         07 grp-data-alt.
		    09 grp-ano-alt      pic 9(04).
		    09 grp-mes-alt      pic 9(02).
		    09 grp-dia-alt      pic 9(02).
	         07 grp-hora-alt.
		    09 grp-hor-alt      pic 9(02).
		    09 grp-min-alt      pic 9(02).
		    09 grp-seg-alt      pic 9(02).

          
      *---------------------------------------------------------------*
      *                                                               *
      *     BOOK DO CADASTRO DE GRUPO DE FORNECEDOR                   *
      *                                                               *
      *---------------------------------------------------------------* 
      *
       FD  GRUPOFOR.
       01  REG-GRUPOFOR.
	   03 GF-CHAVE.
              05 GF-CODIGO        PIC 9(04).
           03 GF-DESCRICAO        PIC X(35).
	   03 GF-CGC.
	      05 GF-CGC8          PIC 9(08).
	      05 GF-CGC4          PIC 9(04).
	      05 GF-CGC2          PIC 9(02).
           03 GF-DIARIO.
              05 GF-FLAG-DIARIO   PIC X(01).
              05 GF-TIPO-D        PIC 9(02).
              05 GF-ARQ-SAIDA-D   PIC X(15).
              05 GF-ARQ-TIPO-D    PIC 9(02).    
           03 GF-MENSAL.
              05 GF-FLAG-MENSAL   PIC X(01).
              05 GF-TIPO-M        PIC 9(02).
              05 GF-ARQ-SAIDA-M   PIC X(15).
              05 GF-ARQ-TIPO-M    PIC 9(02).
           03 GF-FILLER           PIC X(19).
           03 GF-estoque          PIC X(01).
*   
*   Sistema.....: i2    - pedido eletronico
*   Arquivo.....: Cadastro de Grupo de tv                   
*                 fisico "/d/dados/grupotv"
*   Analista....: Otavio/Marco            
*   Ped Eletro..: Sergio Roberto
*   Data Inicio.: 13/11/2006
*

       FD GRUPOTV.   
       01 GRTV-REG.   
          03 GRTV-CHAVE.
             05 GRTV-GRUPO-TV         PIC 9(02).
             05 GRTV-CHAVE-ALT.
                07 GRTV-TV            PIC 9(02).
          03 GRTV-DESCRICAO           PIC X(30).
          03 GRTV-FLG-EXPORTA         PIC X(01).
          03 GRTV-LOG.
             05 GRTV-INCLUSAO.
                07 GRTV-DATA-INC      PIC 9(08).
                07 GRTV-HORA-INC      PIC 9(06).
                07 GRTV-USR-INC       PIC X(08).
             05 GRTV-ALTERACAO.
                07 GRTV-DATA-ALT      PIC 9(08).
                07 GRTV-HORA-ALT      PIC 9(06).
                07 GRTV-USR-ALT       PIC X(08).
          03 GRTV-MOSTRAR-DESCTO      PIC X(01).
          03 GRTV-TipoDesconto        PIC 9(01).
          03 GRTV-FILLER.
             05 GRTV-FILLER1          PIC 9(16).
             05 GRTV-FILLER2          PIC 9(18).

      *|---|---------------------------|-------------------------------|
      *             Projeto: Controle de Saldo na Linha.               *
      *                                                                *
      *    Historico de movimentacao no canal.      Otavio 12/Mar/2020 *
      *|---|---------------------------|-------------------------------|
      *    Abastecimento puxado por geografica.                        *
      *             Inclusao das siglas: VAZ=canal vazio.              *
      *                                  MET=canal pela metade.        *
      *                                             Otavio 07/Jan/2021 *
      *|---|---------------------------|-------------------------------|

       fd hiscanal. 
       01  hcn-reg.
           03 hcn-chave.
              05 hcn-logAnoInc         pic 9(04).
              05 hcn-logMesInc         pic 9(02).
	      05 hcn-sequenciaInc      pic 9(06).

           03 hcn-produto              pic 9(06).
	   03 hcn-data-wms.
	      05 hcn-ano-wms           pic 9(04).
	      05 hcn-mes-wms           pic 9(02).
	      05 hcn-dia-wms           pic 9(02).
	   03 hcn-hora-wms.
	      05 hcn-hor-wms           pic 9(02).
	      05 hcn-min-wms           pic 9(02).
	      05 hcn-seg-wms           pic 9(02).
	      05 hcn-msg-wms           pic 9(02).

	   03 hcn-motivo               pic x(01). *> E=entrada, S=saida,
						  *> F=falta, G=geografica,

           03 hcn-sigla                pic x(03). *> ESP=esp102,
						  *> ESR=espe102 reemissao
						  *> FAL=falta,
						  *> DIF=Diferenca,
						  *> SDF=Sem diferenca,
						  *> CAN=cancelado,
						  *> INC=incluido,
						  *> FNC=inclusao fncmovwms,
						  *> WMS=falta confirmada na lin
						  *> REC=recbimento Linha.
						  *> VAZ=canal vazio.
						  *> MET=canal pela metade.
           03 hcn-unidade              pic 9(07).                            

	   03 hcn-etiqControlado       pic x(01). *> Sim, Nao, nao Informado.

	   03 hcn-etiqContrLote        pic x(18).
	   03 filler redefines hcn-etiqContrLote.
	      05 hcn-etiquetaContr     pic 9(12).
	      05 filler redefines hcn-etiquetaContr.
		 07 hcn-etiqCntrFix    pic 9(02).
		 07 hcn-etiqCntrSeq    pic 9(08).
		 07 hcn-etiqCntrFil    pic 9(02).
              05 hcn-etiqSobra         pic x(06).

	   03 filler redefines hcn-etiqContrLote.
	      05 hcn-lote              pic x(10).
	      05 hcn-dataVenc.
	         07 hcn-anoVenc        pic 9(04).
	         07 hcn-mesVenc        pic 9(02).
	         07 hcn-diaVenc        pic 9(02).

	   03 hcn-logInclusao.
              05 hcn-logSeqInc         pic 9(06).

      *|---|---------------------------|-------------------------------|

      *----------------------------------------------------------------*     
      *                                                                *
      * Projeto ........: Protocolo de devolucao.                      *
      * Sistema ........: Expedicao                                    *
      * Objetivo .......: Historico de protocolo de devolucao          *
      * Eh povoado pelo :                                              *
      * Analista .......: Marco                                        *
      * Data ...........: 05/06/2013                                   *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     

      *|---|-----------------------------------------------------------|
	   fd  hisprotdev.   

	   01  hisprotdev-reg. 
	       03 hisprotdev-chave.
		  05 hisprotdev-cliente          pic 9(06).
		  05 hisprotdev-seq              pic 9(06).
	          05 hisprotdev-data.
		     07 hisprotdev-ano           pic 9(04).
		     07 hisprotdev-mes           pic 9(02).
		     07 hisprotdev-dia           pic 9(02).
                  05 hisprotdev-carro            pic 9(05).
	          05 hisprotdev-protocolo        pic 9(10).
	       03 hisprotdev-usuario             pic x(10).
	       03 hisprotdev-historico           pic x(20).
	       03 hisprotdev-programa            pic x(10).
	       03 hisprotdev-filler              pic x(20).
      *                                                                *
      *----------------------------------------------------------------*     
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*     
*
*   Sistema.....: Inventario     
*   Arquivo.....: Cadastro de Controle Numero Geografico
*                 fisico "/f/fechaMM/ictlnumg12345MMAAAA"           
*   Analista....: Otavio
*   Logistica...: Abel
*   Data Inicio.: 24/05/2005
*

       FD ICTLNUMG. 
       01 cng-REG.
          03 cng-CHAVE.
             05 cng-FILIAL           PIC 9(02).
             05 cng-num-geogr        PIC 9(06).

          03 CNG-RUA                 PIC X(02).
          03 CNG-NIVEL               PIC 9(02).
          03 CNG-PALETE              PIC 9(03).

          03 cng-LOG.
             05 cng-INCLUSAO.
                07 cng-DATA-INC      PIC 9(08).
                07 cng-HORA-INC      PIC 9(06).
                07 cng-USR-INC       PIC X(08).
             05 cng-ALTERACAO.
                07 cng-DATA-ALT      PIC 9(08).
                07 cng-HORA-ALT      PIC 9(06).
                07 cng-USR-ALT       PIC X(08).

          03 cng-FILLER.
             05 cng-FILLER2          PIC 9(18).

         


* Guarda o campo e2edk01-a-pedido-sap.

       FD  IDOCPED.

       01  IPD-REG.
	   03 IPD-CHAVE.
	      05 IPD-PEDIDO         PIC 9(10).
   	      05 IPD-MFRNR          PIC X(02).

      *---------------------------------------------------------------*
      * IPD-PEDIDO - Numero do pedido SAP                             *
      * IPD-MFRNR  - Split do produto SAP                             *
      *---------------------------------------------------------------*
      *----------------------------------------------------------------*
      * Arquivo : /d/dados/intsap                                      *
      * Objetivo: Guardar o ultimo envio de informacoes para o SAP.    *
      * Atualizada e utilizada pelo sap050.                            *
      *                                                                *
      * 22/12/2022                                              Jorge  *
      *----------------------------------------------------------------*

       FD  INTSAP.     
       01  ITS-REGISTRO.
	   03 ITS-CHAVE.
	      05 ITS-RC        pic x(01).
	      05 ITS-FILLER1   pic x(01).
	      05 ITS-CODIGO    pic 9(06).

	   03 ITS-FILLER2      pic x(01).
	   03 ITS-EXCECAO      pic x(01).
	   03 ITS-FILLER3      pic x(01).
	   03 ITS-VALIDADE     pic x(01).
	   03 ITS-FILLER4      pic x(01).
	   03 ITS-RESID        pic x(01).
	   03 ITS-FILLER5      pic x(01).

      *|---|---------------------------|-------------------------------|
      *    Inclusao do campo invnumcon-invAberto (A=aberto, F=fechado).*
      *                                Otavio 16/jun/2021              *
      *|---|---------------------------|-------------------------------|

      *|---|-----------------------------------------------------------|
       fd  invnumcon.  

       01  invnumcon-reg.

	   03 invnumcon-chave.

	      05 invnumcon-data-inf.
		 07 invnumcon-ano-inf    pic 9(04).
		 07 invnumcon-mes-inf    pic 9(02).
		 07 invnumcon-dia-inf    pic 9(02).

              05 invnumcon-num-cont      pic 9(03).

      *|---|-----------------------------------------------------------|
	   03 invnumcon-senha            pic x(04).
      *|---|-----------------------------------------------------------|
           03 invnumcon-log-inc.                  
	      05 invnumcon-data-inc.
	         07 invnumcon-ano-inc    pic 9(04).
		 07 invnumcon-mes-inc    pic 9(02).
		 07 invnumcon-dia-inc    pic 9(02).

              05 invnumcon-hora-inc.
		 07 invnumcon-hh-inc     pic 9(02).
		 07 invnumcon-mm-inc     pic 9(02).
		 07 invnumcon-ss-inc     pic 9(02).
		 07 invnumcon-ml-inc     pic 9(02).

              05 invnumcon-usr-inc       pic x(10).
              05 invnumcon-login-inc     pic x(09).
	      05 invnumcon-invAberto     pic x(01). *>A=aberto, F=fechado
              05 invnumcon-programa      pic x(06).
              05 invnumcon-senha-etq     pic x(04).
*
*   Sistema.....: Inventario     
*

       FD linhinvp. 
       01 IPR-REG.
          03 IPR-CHAVE.
             05 IPR-DATA-CONTAG.                         
		07 IPR-ANO-CONTAG    PIC 9(04).
		07 IPR-MES-CONTAG    PIC 9(02).
		07 IPR-DIA-CONTAG    PIC 9(02).

          03 IPR-QTDE-MINIMA         PIC 9(05).
          03 IPR-QTDE-MAXIMA         PIC 9(05).

          03 IPR-VL-MINIMO           PIC 9(08)v99.
          03 IPR-VL-MAXIMO           PIC 9(08)v99.

          03 IPR-LOG.
             05 IPR-INCLUSAO.
                07 IPR-DATA-INC      PIC 9(08).
                07 IPR-HORA-INC      PIC 9(06).
                07 IPR-USR-INC       PIC X(08).
             05 IPR-ALTERACAO.
                07 IPR-DATA-ALT      PIC 9(08).
                07 IPR-HORA-ALT      PIC 9(06).
                07 IPR-USR-ALT       PIC X(08).

          03 IPR-FILLER.
             05 IPR-FILLER2          PIC 9(18).

         


       FD LOTEVEZN.
       01 LVZN-REG.
	  03 LVZN-CHAVE.
	     05 LVZN-PRODUTO     PIC 9(06).    
	     05 LVZN-etiqueta    pic 9(12).
             05 filler redefines lvzn-etiqueta.
		07 lvzn-etiq-fix pic 9(02).
		07 lvzn-etiq-seq pic 9(08).
		07 lvzn-etiq-fil pic 9(02).
          03 LVZN-LOTE           PIC X(10).
	  03 LVZN-SALDOINI       PIC 9(05).
	  03 LVZN-SALDO          PIC 9(05).
	  03 LVZN-ATUAL          PIC 9(01).
          03 LVZN-MES            PIC 9(01).
          03 LVZN-TIPO           PIC 9(01).
          03 LVZN-SALDO-AUT      PIC 9(05).
          03 LVZN-ATUAL-AUT      PIC 9(01).
	  03 LVZN-FLAG-ENVIO     PIC X(01).
	  03 filler redefines lvzn-flag-envio.
	     05 lvzn-status-validade pic x(01). 
					       *> P=vencimento Proximo  
					       *> V=Vencido 
					       *> D=Dentro da validade
					       *> espaco = nao foi calculado
          03 LVZN-ETQ-FRACAO     PIC 9(01).
          03 LVZN-FILLER         PIC 9(03).
*------------------------------------------------------------------*
* lvzn-etq-fracao = ZERO eh cx fracionaria                         *
*                 =  1   eh cx fechada                             *
*------------------------------------------------------------------*
       FD  matricul.

       01  mtr-REG.
	   03 mtr-CHAVE.
	      05 mtr-matricula         PIC 9(06).
           03 mtr-nome                 pic x(40).
           03 mtr-supervisor           pic x(01).
	   03 mtr-senha                pic 9(06).
	   03 mtr-estacao-61           pic x(01).
	   03 mtr-senha-etq            pic x(01).
           03 mtr-reemissao-etq        pic x(01).
           03 mtr-lib-gpp              pic x(01).
           03 mtr-filler               pic 9(07).



      *---------------------------------------------------------------*
      *                   Projeto Expedicao na TV.                    *
      *                                                               *
      * Projeto:     Cadastrar meta da producao e cor da prioridade.  *
      * Gerencia:    Expedicao.                                       *
      * Data:        29/06/2016.                                      *
      * Programador: Otavio                                           *
      *                                                               *
      *---------------------------------------------------------------*
      *|---|-----------------------------------------------------------|
       fd  metaprio.

       01  mpr-reg.
	   03 mpr-chave.
	      05 mpr-data.         
		 07 mpr-ano             pic 9(04).
		 07 mpr-mes             pic 9(02).
		 07 mpr-dia             pic 9(02).
              05 mpr-prioridade         pic 9(02).
              05 mpr-turno              pic 9(01).

           03 mpr-hora-meta.
	      05 mpr-hor-meta           pic 9(02).
	      05 mpr-min-meta           pic 9(02).

           03 mpr-cor                   pic 9(02).

	   03 mpr-cnpj-cpf              pic 9(14).
	   03 filler redefines          mpr-cnpj-cpf.
	      05 mpr-cpf-zeros          pic 9(03).
	      05 mpr-cpf                pic 9(11).

           03 mpr-filler                pic 9(04).

	   03 mpr-log-inclusao.
              05 mpr-usuario-inc        pic x(10).
              05 mpr-login-inc          pic x(10).
	      05 mpr-programa-inc       pic x(08).
	      05 mpr-data-hora-inc.
	         07 mpr-data-inc.
		    09 mpr-ano-inc      pic 9(04).
		    09 mpr-mes-inc      pic 9(02).
		    09 mpr-dia-inc      pic 9(02).
	         07 mpr-hora-inc.
		    09 mpr-hor-inc      pic 9(02).
		    09 mpr-min-inc      pic 9(02).
		    09 mpr-seg-inc      pic 9(02).

	   03 mpr-log-alteracao.      *> o ultimo que alterou
              05 mpr-usuario-alt        pic x(10).
              05 mpr-login-alt          pic x(10).
	      05 mpr-programa-alt       pic x(08).
	      05 mpr-data-hora-alt.
	         07 mpr-data-alt.
		    09 mpr-ano-alt      pic 9(04).
		    09 mpr-mes-alt      pic 9(02).
		    09 mpr-dia-alt      pic 9(02).
	         07 mpr-hora-alt.
		    09 mpr-hor-alt      pic 9(02).
		    09 mpr-min-alt      pic 9(02).
		    09 mpr-seg-alt      pic 9(02).

          
      *----------------------------------------------------------------*
      * Arquivo de Modulo de Fechamento Diario                         *
      *                                                                *
      * Em: 22/01/2007 - Adilson / Marco / Otavio                      *
      *                                                                * 
      *                                                                *
      *----------------------------------------------------------------*
       FD MODFEC.   
       01 MOD-REGISTRO.
	  03 MOD-CHAVE.
	     05 MOD-PRINCIPAL     PIC 9(02).
	     05 MOD-SEQUENCIA     PIC 9(03).
          03 MOD-DESCRICAO        PIC X(20).
	  03 MOD-PROGRAMA         PIC X(12).
	  03 MOD-TIPO             PIC X(01).
	  03 FILLER               PIC X(20).
	  03 MOD-INCLUSAO.
	     05 MOD-DATA-INC.
	        07 MOD-ANO-INC    PIC 9(04).
	        07 MOD-MES-INC    PIC 9(02).
	        07 MOD-DIA-INC    PIC 9(02).
	     05 MOD-HORA-INC.
	        07 MOD-HH-INC     PIC 9(02).
	        07 MOD-MM-INC     PIC 9(02).
	        07 MOD-SS-INC     PIC 9(02).
             05 MOD-USUARIO-INC   PIC X(15).
	  03 MOD-ALTERACAO.
	     05 MOD-DATA-ALT.
	        07 MOD-ANO-ALT    PIC 9(04).
	        07 MOD-MES-ALT    PIC 9(02).
	        07 MOD-DIA-ALT    PIC 9(02).
	     05 MOD-HORA-ALT.
	        07 MOD-HH-ALT     PIC 9(02).
	        07 MOD-MM-ALT     PIC 9(02).
	        07 MOD-SS-ALT     PIC 9(02).
             05 MOD-USUARIO-ALT   PIC X(15).
      *----------------------------------------------------------------*
      *    MOD-TIPO (P - programa / S - shell)                         *
      *                                                                *
      *----------------------------------------------------------------*
      *--------------------------------------------------------------*
      *           Projeto WMS controle de saida na expedicao         *
      *                                                              *
      * Objetivo: Cadastro de motivo de cancelamento de minuta       *
      * Sistema : WMS                                                *
      * Data....: 06/11/2018                                         *
      *--------------------------------------------------------------* 
       FD motcanmin.
       01  reg-motcanmin.
	   03  motcan-chave.
	       05 motcan-codigo        pic 9(02).
           03 motcan-motivo            pic x(30).
           03 motcan-dthh-inclusao.
              05 motcan-inc-ano        PIC 9(04).
              05 motcan-inc-mes        PIC 9(02).
              05 motcan-inc-dia        PIC 9(02).
              05 motcan-inc-hh         PIC 9(02).
              05 motcan-inc-mm         PIC 9(02).
              05 motcan-inc-ss         PIC 9(02).
	   03 motcan-usuario-inc       PIC X(10).
           03 motcan-dthh-alteracao.
              05 motcan-alt-ano        PIC 9(04).
              05 motcan-alt-mes        PIC 9(02).
              05 motcan-alt-dia        PIC 9(02).
              05 motcan-alt-hh         PIC 9(02).
              05 motcan-alt-mm         PIC 9(02).
              05 motcan-alt-ss         PIC 9(02).
	   03 motcan-usuario-alt       PIC X(10).

130710 FD NFENTRADA.
       01 NFE-REG.
          03 NFE-CHAVE.
             05 NFE-etiqueta         PIC 9(12).
	     05 filler redefines nfe-etiqueta.
		07 nfe-etiq-fix      pic 9(02).
		07 nfe-etiq-seq      pic 9(08).
		07 nfe-etiq-fil      pic 9(02).
          03 NFE-NFENTRADA           PIC 9(09).

	  03 nfe-cod-clie-sap        pic 9(10).
	  03 nfe-empenho             pic 9(10).

	  03 nfe-rua                 pic x(02).

          03 nfe-planilha            PIC 9(10).
          03 nfe-crdk                PIC 9(01).     
*-------> nfe-crdk = 1 
          03 nfe-impr                PIC X(01).
          03 FILLER                  PIC 9(02).

*
*   Sistema.....: Faturamento / expedicao
*   Arquivo.....: Cadastro de nome fantansia do clientes.
*                 fisico "/d/dados/nomefant"            
*   Analista....: Sergio
*   Logistica...: Abel
*   Data Inicio.: 16/06/2006
*
*   Obs. Incluir o nome fantasia no relatorio de itinerario.
*        A carga inicial serah feita via arquivo .txt, as demais
*   via SAP.
*

       FD nomefant.  
       01 nft-REG.
          03 nft-CHAVE.
	     05 nft-CODCLIENTE       PIC 9(06).

          03 nft-CHAVE-alt.
             05 nft-nome-fantasia    pic x(32).

          03 nft-filler              pic 9(18).

          03 nft-LOG.
             05 nft-INCLUSAO.
                07 nft-DATA-INC      PIC 9(08).
                07 nft-HORA-INC      PIC 9(06).
                07 nft-USR-INC       PIC X(08).
             05 nft-ALTERACAO.
                07 nft-DATA-ALT      PIC 9(08).
                07 nft-HORA-ALT      PIC 9(06).
                07 nft-USR-ALT       PIC X(08).

       FD  NOTAPT.
       01  PT-REGISTRO.    
           03  PT-CHAVE.  
               05  PT-CLIENTE         PIC 9(06). 
               05  PT-EMISSAO.     
                   07 PT-ANO-EMI      PIC 9(04).    
                   07 PT-MES-EMI      PIC 9(02).    
                   07 PT-DIA-EMI      PIC 9(02).    
               05  PT-PEDIDO          PIC 9(05).
	   03  PT-DUPLICATA-PRINC     PIC 9(08).
           03  PT-VENCI-PRINC. 
               05 PT-ANO-VEN          PIC 9(04).    
               05 PT-MES-VEN          PIC 9(02).    
               05 PT-DIA-VEN          PIC 9(02).    
	   03  PT-DUPLICATA-AUX       PIC 9(08).
           03  PT-VENCIMENTO-AUX. 
               05 PT-ANO-VEN-AUX      PIC 9(04).    
               05 PT-MES-VEN-AUX      PIC 9(02).    
               05 PT-DIA-VEN-AUX      PIC 9(02).    

*--------------------------------------------------------*
* Arquivo de lote e atualizado pelo programa exp109.     *
*                                                        *
* Nome...:/d/dados/notlot                                *
*                                                        *
*--------------------------------------------------------*
       FD  NOTLOT.   

       01  NLT-REG.
	   03 NLT-CHAVE.
	      05 NLT-CODBARRASPROF.
	         07 nlt-etiqueta      pic 9(12).
		 07 filler redefines nlt-etiqueta.
		    09 nlt-etiq-fix   pic 9(02).
		    09 nlt-etiq-seq   pic 9(08).
		    09 nlt-etiq-fil   pic 9(02).
           03 NLT-CHAVE2.              
	      05 NLT-CODBARRASFORN.
		 07 NLT-ZEROS         PIC 9(07).
		 07 NLT-CODPROD       PIC 9(06).
           03 NLT-LOTE                PIC X(10).
	   03 NLT-DATAVENC.
	      05 NLT-ANOVENC          PIC 9(04).    
	      05 NLT-MESVENC          PIC 9(02).    
	      05 NLT-DIAVENC          PIC 9(02).    
           03 nlt-qtde-red.
              05 NLT-QTDE             PIC 9(05). 
	      05 NLT-QTDE-IMPRESSA    PIC 9(05).

           03 filler redefines nlt-qtde-red.
              05 nlt-qtde4            pic 9(04).
              05 nlt-qtde-i           pic 9(06).

	   03 NLT-DATASYSTEMA.
	      05  NLT-ANOSYS          PIC 9(04).
	      05  NLT-MESSYS          PIC 9(02).
	      05  NLT-DIASYS          PIC 9(02).
           03 NLT-TRANSF              PIC 9(01).
           03 NLT-NOTA                PIC 9(06).

** NLT-C5MES       ===> C5MMEMI.
** NLT-SEQ-ATUAL   ===> C5SEQENT                                        
** NLT-CODBARRASFORN => pet-cod-barras(prodest).
** NLT-LOTE        ===> LOTE.
** NLT-DATAVENC    ===> mes e ano do vencimento do produto.
** NLT-QTDE        ===> unidades deste lote.                                 
** NLT-QTDE-IMPRESSA => qtde de etiquetas impressas ate hoje.      
** NLT-DATASYSTEMA ===> data do sistema para facilitar o alivio do arquivo.   
** NLT-TRANSF      ===> 0=>compra (motivo 10), 1=transf(motivo 35)
      *----------------------------------------------------------------*
      * Arquivo : Numero do pedido OL EDI do cliente                   *
      * Objetivo: Manter informacoes do numero do pedido OL EDI cliente* 
      *----------------------------------------------------------------*
       FD  NUMPEDOL.
       01  NUMPEDOL-REGISTRO.
	   03 NUMPOL-CHAVE.
	      05 NUMPOL-DATA.
		 07 NUMPOL-AA       PIC 9(04).
		 07 NUMPOL-MM       PIC 9(02).
		 07 NUMPOL-DD       PIC 9(02).
	      05 NUMPOL-NUMPEDCLI   PIC X(11).
	   03 NUMPOL-PEDIDO         PIC 9(05).
	   03 NUMPOL-PEDCLI         PIC X(20).
	   03 NUMPOL-FILLER         PIC 9(18).
      *----------------------------------------------------------------*
      * Arquivo : Cadastro de Projetos OL EDI por cliente              *
      * Objetivo: Manter informacoes de TV por cliente e Projeto       * 
      *           OLCLI-CLIENTE = zeros, mesmo TV para todo Proj OL    *
      *----------------------------------------------------------------*
       FD  OLCODCLI.
       01  OLCLI-REGISTRO.
	   03 OLCLI-CHAVE.
	      05 OLCLI-PROJETO      PIC X(02).
	      05 OLCLI-FORNEC       PIC 9(04).
	      05 OLCLI-CLIENTE      PIC 9(06).
	   03 OLCLI-CONDICAO        PIC 9(02).
	   03 OLCLI-FILLER          PIC 9(18).
      *----------------------------------------------------------------*
      * Arquivo : Cadastro de Projetos EDI OL                          *
      * Objetivo: Manter informacoes dos projetos EDI OL               * 
      *----------------------------------------------------------------*
       FD  OLPROJETO.
       01  OLPROJ-REGISTRO.
	   03 OLPROJ-CHAVE.
	      05 OLPROJ-PROJETO     PIC X(02).
              05 OLPROJ-GRUPOFOR    PIC 9(04).
	   03 OLPROJ-DT-INC.  
	      05 OL-PROJ-AA-INC     PIC 9(04).
	      05 OL-PROJ-MM-INC     PIC 9(02).
	      05 OL-PROJ-DD-INC     PIC 9(02).
	   
	   03 OLPROJ-DT-ALT.  
	      05 OL-PROJ-AA-ALT     PIC 9(04).
	      05 OL-PROJ-MM-ALT     PIC 9(02).
	      05 OL-PROJ-DD-ALT     PIC 9(02).

	   03 OLPROJ-DT-VAL.  
	      05 OL-PROJ-AA-VAL     PIC 9(04).
	      05 OL-PROJ-MM-VAL     PIC 9(02).
	      05 OL-PROJ-DD-VAL     PIC 9(02).

	   03 OLPROJ-INTER          PIC X(01).
	   03 OLPROJ-PRAZO          PIC X(01).
	   03 OLPROJ-DESCPED        PIC X(01).
	   03 OLPROJ-DESCCND        PIC X(01).
	   03 OLPROJ-DESCFIN        PIC X(01).
           03 OLPROJ-MARGEM         PIC 9(02)V99.
           03 OLPROJ-FILLER1        PIC 9(18).
	   03 OLPROJ-FILLER2        PIC 9(18).
      *----------------------------------------------------------------*
      * Descricao dos campos:                                          *
      * OLPROJ-GRUPOFOR: Grupo de Fornecedor                           *
      * OLPROJ-DT-VAL  : Data de validade do projeto                   *
      * OLPROJ-INTER   : Permite Inter S/N                             *
      * OLPROJ-PRAZO   : Prazo de faturamento                          *
      * OLPROJ-DESCPED : Considera desconto enviado no pedido S/N      *
      * OLPROJ-DESCCND : Considera desconto da condicao       S/N      *
      * OLPROJ-DESCFIN : Direciona o Desconto para Financeiro S/N      *
      * OLPROJ-MARGEM  : Margem esperada                               *     
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
      * Arquivo : Cadastro de Provedores OL                            *
      * Objetivo: Manter informacoes dos Provedores OL                 * 
      *----------------------------------------------------------------*
       FD  OLPROVEDOR.
       01  OLPROV-REGISTRO.
	   03 OLPROV-CHAVE.
	      05 OLPROV-PROVEDOR    PIC X(02).
	   03 OLPROV-DESCRICAO      PIC X(30).
	   03 OLPROV-DESCR-BREVE    PIC X(10).
	   03 OLPROV-DT-INC.
	      05 OLPROV-AA-INC      PIC 9(04).
	      05 OLPROV-MM-INC      PIC 9(02).
	      05 OLPROV-DD-INC      PIC 9(02).
	   03 OLPROV-CODBIS         PIC 9(02).
	   03 OLPROV-FILLER         PIC 9(18).

      *------------------------------------------------------------------*
      * Cadastro de Televendedora de pedidos.                            *
      *------------------------------------------------------------------*

        FD OPERADORA.
        01 OPER-REGISTRO.
           03  OPER-CHAVE.
               05  OPER-CODIGO         PIC X(02).  
           03  OPER-NOME               PIC X(30).
           03  OPER-RAMAL              PIC 9(03).
           03  OPER-CLASSIF            PIC X(01).
           03  OPER-NUM-SESSAO         PIC 9(01).
	   03  OPER-INCLUSAO.
               05  OPER-DT-INC         PIC 9(08).
               05  OPER-HH-INC         PIC 9(06).
               05  OPER-USR-INC        PIC x(10).
	   03  OPER-ALTERACAO.
               05  OPER-DT-ALT         PIC 9(08).
               05  OPER-HH-ALT         PIC 9(06).
               05  OPER-USR-ALT        PIC x(10).
           03  OPER-FILLER             PIC 9(18).


      *---------------------------------------------------------------*
      *                     Projeto Napolitano                        *
      *                                                               *
      * Objetivo:    Blocado - cadastro do palete final do produto.   *
      * Gerencia:    Logistica.                                       *
      * Data:        24/01/2018.                                      *
      * Programador: Otavio                                           *
      * Programas:                                                    *
      *                                                               *
      *---------------------------------------------------------------*
      *|---|-----------------------------------------------------------|
    
       fd  paleprod.
       01  plp-reg.
	   03 plp-chave.
	      05 plp-endereco.                           
		 07 plp-rua            pic x(02).
		 07 plp-nivel          pic 9(02).
		 07 plp-palete         pic 9(03).
              05 plp-produto           pic 9(06).

           03 plp-ativo                pic x(01).

	   03 plp-filler               pic 9(18).

           03 plp-logInclusao.
	      05 plp-usuarioInc        pic x(10).
	      05 plp-loginInc          pic x(10).
	      05 plp-dataHoraInc. 
		 07 plp-dataInc.
		    09 pfp-anoInc      pic 9(04).
		    09 pfp-mesInc      pic 9(02).
		    09 pfp-diaInc      pic 9(02).
		 07 plp-horaInc.
		    09 pfp-horInc      pic 9(02).
		    09 pfp-minInc      pic 9(02).
		    09 pfp-segInc      pic 9(02).
	      
           03 plp-logAlterado.
	      05 plp-usuarioAlt        pic x(10).
	      05 plp-loginAlt          pic x(10).
	      05 plp-dataHoraAlt. 
		 07 plp-dataAlt.
		    09 pfp-anoAlt      pic 9(04).
		    09 pfp-mesAlt      pic 9(02).
		    09 pfp-diaAlt      pic 9(02).
		 07 plp-horaAlt.
		    09 pfp-horAlt      pic 9(02).
		    09 pfp-minAlt      pic 9(02).
		    09 pfp-segAlt      pic 9(02).
	      
	      
      ************************************************************
      * ARQUIVO - PDF1.IND                                       *
      * ...CADASTRO DE DOLAR                                     *
      * ORGANIZACAO - INDEXADO                                   *
      * CHAVE DE ACESSO - CF1CHAVE                               *
      * TAMANHO - 64 BYTES                                       *
      * OBS. : CF1NUMERO = 999999 - CF1DATA                      *
      * Alterado para 8 digitos o campo CF1DATA - Alan - 05/02/98*
      ************************************************************
       FD PDF1.
       01 CF1REGISTRO.
          02 CF1CHAVE.
             03 CF1DATA.
                05 CF1ANO.
		   10 CF1ANO-1  PIC        99.
		   10 CF1ANO-2  PIC        99.
                05 CF1MES       PIC        99.
                05 CF1DIA       PIC        99.
          02 CF1CHAVE2.
             03 CF1NUMERO       PIC        9(08).
          02 CF1OFICIAL         PIC        9(06)V999.
          02 CF1TURISMO         PIC        9(06)V999.
          02 CF1PARALELO        PIC        9(06)V999.
          02 CF1UFIR            PIC        9(06)V9(06).
      *----------------------------------------------------------------*
      * Arquivo : Nota Fiscal impressa pelo SAP                        *
      * Objetivo: Manter informacoes do numero da NF impressa pelo SAP *
      *           para impressao do itinerario                         *
      *----------------------------------------------------------------*

       FD pednfsap.
       01 pednfsap-reg.  
          03 pednfsap-chave.
	     05 pednfsap-pedsap          pic 9(10).
             05 pednfsap-pedwms          pic 9(05).
	  03 pednfsap-data-wms.
	     05 pednfsap-ano             pic 9(04).
	     05 pednfsap-mes             pic 9(02).
	     05 pednfsap-dia             pic 9(02).
	  03 pednfsap-filler             pic 9(10).
      *===============================================================*
      *         Arquivo de PRODUTOS para a maquina PEEN               *
      *                PEEM.CPY                                       *
      *                                                               *
      *  Select definido no peen.sel                                  *
      *  Variaveis de Work definido no peen.wor                       *
      *===============================================================*

       FD  PEEM.
       01  PEE-REGISTRO.
	   03 PEE-CHAVE.
	      05 PEE-CODPROD-PROFARMA  PIC 9(06).
	      05 PEE-CANAL-PEEM        PIC 9(06).
           03 PEE-ESTACAO              PIC 9(02).
           03 PEE-ENDERECO-KF.
	      05 PEE-SETOR             PIC 9(02).
	      05 PEE-MODULO            PIC X(01).
	      05 PEE-CANAL             PIC 9(03).
           03 PEE-FILLER               PIC X(20).
      *====================================================================*  
      * PEE-CODPROD =======> codigo do produto na PROFARMA
      * PEE-CANAL-PEEM ====> Endereco do produto na maquina PEEN
      * PEE-ESTACAO =======> ????????????
      * PEE-ENDERECO-KF ===> Endereco do produto para a K+F
      *=====================================================================*



      *--------------------------------------------------------*
      * Arquivo de Cadastro de Bairros                         *
      * Organizacao     : Indexada                             *
      * Chave primaria  : C11CHAVE                             *
      * Chave Secundaria: C11CHAVE-ALT                         *
      *--------------------------------------------------------*
       FD  PFC11.
       01  C11REGISTRO.
	   03 C11CHAVE.
	      05 C11CODIGO           PIC 9(06).
	   03 C11CHAVE-ALT.
	      05 C11BAIRRO           PIC X(20).
	      05 C11CIDADE           PIC X(20).
	      05 C11UF               PIC X(02).
	   03 C11REGIAO-ACHE         PIC 9(02).
	   03 C11BRISTOL             PIC 9(05).
	   03 C11BRICK               PIC 9(04).
	   03 C11REGIAO-BRICK        PIC 9(01).
	   03 C11SETOR-BRICK         PIC 9(01).
	   03 C11R3LEGADO            PIC X(01).
	   03 FILLER                 PIC X(47).
      *----------------------------------------------------*
      * Novo Arquivo de Informacoes do Cliente (Pfc12)     *
      *  Organizacao Indexada                              *
      *  Chave ......: C12chave                            *
      *  Tamanho ....:                                     *
      * Conversao para datas com 8 digitos - Alan -23/09/99*
      *----------------------------------------------------*
       FD PFC12C.
       01 C12REGISTRO.
          05 C12CHAVE.
             10 C12CLIENTE          PIC  9(06).

          05 C12ABERTO              PIC S9(12)V99.
          05 C12PEDIDO-DIA          PIC S9(11)V99.

          05 C12DATA-ULT-COMPRA.                
             10 C12AA-ULT-CP        PIC 9(04).                
	     10 FILLER REDEFINES C12AA-ULT-CP.
		15 C12AA-ULT-CP1    PIC 9(02).
		15 C12AA-ULT-CP2    PIC 9(02).
             10 C12MM-ULT-CP        PIC 9(02).                
             10 C12DD-ULT-CP        PIC 9(02).                
          05 C12VALOR-ULT-COMPRA    PIC 9(10)V99.

          05 C12DATA-MAIOR-COMPRA.             
             10 C12AA-MAI-CP        PIC 9(04).                
	     10 FILLER REDEFINES C12AA-MAI-CP.
		15 C12AA-MAI-CP1    PIC 9(02).
		15 C12AA-MAI-CP2    PIC 9(02).
             10 C12MM-MAI-CP        PIC 9(02).                
             10 C12DD-MAI-CP        PIC 9(02).                
          05 C12VALOR-MAIOR-COMPRA  PIC 9(10)V99.

          05 C12DTULTCAD            PIC 9(08).
	  05 C12ULTCADR REDEFINES C12DTULTCAD.
	     10 C12ANULTCAD         PIC 9(04).
	     10 FILLER REDEFINES C12ANULTCAD.
		15 C12ANULTCAD1     PIC 9(02).
		15 C12ANULTCAD2     PIC 9(02).
	     10 C12MEULTCAD         PIC 9(02).
	     10 C12DIULTCAD         PIC 9(02).
  
	  05 C12ALTERADO            PIC 9(01).

          05 C12ATS-MEDIO-A         PIC 9(03)V99.
          05 C12ATS-MEDIO           PIC 9(03)V99.
          05 C12ATS-DUP             PIC 9(03)V99.    
          05 C12VENC90              PIC 9(10)V99.
          05 C12PRAZO-1             PIC 9(03)V99.    
          05 C12PRAZO-2             PIC 9(03)V99.    
          05 C12PRAZO-3             PIC 9(03)V99.    
          05 C12VALOR-1             PIC 9(10)V99.
          05 C12VALOR-2             PIC 9(10)V99.
          05 C12VALOR-3             PIC 9(10)V99.
          05 C12VALOR-1-PG          PIC 9(10)V99.
          05 C12VALOR-2-PG          PIC 9(10)V99.
          05 C12VALOR-3-PG          PIC 9(10)V99.
          05 C12FLAG-ATSDUP         PIC X(01).
          
	  05 C12FILLER              PIC X(03).                        
      *----------------------------------------------------------*
      *C12aberto     - Duplicatas Que Nao Foram Pagas            *
      *C12pedido-dia - Pedidos Que Foram Faturados No Dia        *
      *C12venc90     - Vencidas em 90 dias.                      *
      *C12ats-medio  - Atraso Medio do Cliente                   *
      *C12ats-dup    - Atraso Ponderado das Dupl Vencidas (90)   *
      *C12prazo-1    - Prazo Ponderado do 1. Mes Ant. Fechado.   *
      *                Este e o ultimo mes                       *
      *C12prazo-2    -   "      "      "  2.  "   "      "       *
      *C12prazo-3    -   "      "      "  3.  "   "      "       *
      *C12valor-1    - Valor das Dupl  do 1. Mes Ant. Fechado.   *
      *C12valor-2    -   "    "    "   "  2.  "   "      "       *
      *C12valor-3    -   "    "    "   "  3.  "   "      "       *
      *C12FLAG-ATSDUP- Flag para informar se ha dupl com num dias*
      *                vencim maior que informado arq parametros *
      *----------------------------------------------------------*
      *C12DTULTCAD - Data de recebimento do ultimo caderno       *
      *C12ALTERADO e usado para saber se o registro foi          *
      *  alterado ou nao;                                        *
      *	   0(zero) = nao foi alterado,                           *
      *    1       = foi alterado e nao foi enviado              *
      *    2       = foi alterado e enviado.                     *
      *----------------------------------------------------------*
      *
      *----------------------------------------------------------------*
      * Novo Cadastro de Fornecedores                                  *
      *                                  30/03/94 - Rosane Chagas      *
      * Alteracoes: A tabela de Condicoes de Vendas foi redefinida,    *
      *   permanecendo o campo C2BLOQUEADO e foi criado um novo campo  *
      * Implementacao das datas com 8 digitos      - Simone- 06/03/1999*
      * Incluir campo linha de fornecedor          - Monica- 09/11/1999*
      * Incluir campo incentivo ao ped. eletronico - Monica- 09/11/1999*
      * Incluir campo c2grupocond para atender SD  - Adilson-26/03/2008*
      * Incluir campo c2abreveatura                - Marco   02/02/2009*
      * Incluir campo c2bcrdesc                    - Adilson-02/01/2010*
      * Incluir campo c2descom-OL                  - Adilson-03/05/2010*
      * Alterar c2filler1 9(6) para 4 e incluir c2tpcond 9(2)          *
      *                                            - Adilson-28/01/2013*
      *----------------------------------------------------------------*
      *
       FD PFC2.
       01 C2REGISTRO.
          02 C2CODIGO.
             03 C2FORNECEDOR     PIC 9(04).
          02 C2DIGITO            PIC 9(01).
          02 C2SITUACAO          PIC X(01).
          02 C2TIPO-FOR          PIC X(01).
          02 C2RAZAO             PIC X(40).
          02 C2ABREVE            PIC X(05).
          02 C2ENDERECO          PIC X(030).
          02 C2MUNICIPIO         PIC X(20).
          02 C2BAIRRO            PIC X(15).
          02 C2ESTADO            PIC X(02).
          02 C2CODIGO-POSTAL.
             03 C2CEP            PIC X(05).
             03 C2CEP-C          PIC X(03).
          02 C2GERENTE           PIC X(30).
          02 C2TELEFONES.
             03 C2TEL-1.
                05 C2DDD-1       PIC 9(05).
                05 C2NUM-1       PIC 9(07).
             03 C2TEL-2.
                05 C2DDD-2       PIC 9(05).
                05 C2NUM-2       PIC 9(07).
          02 C2TELEX.
             03 C2DDD-X          PIC 9(05).
             03 C2NUM-X          PIC 9(07).
          02 C2FAX.
             03 C2DDD-F          PIC 9(05).
             03 C2NUM-F          PIC 9(07).
          02 C2UF.
             03 C2UF-1           PIC X(02).
             03 C2UF-2           PIC X(02).
          02 C2CGC.
             03 C2CGC-NUM        PIC 9(08).
             03 C2CGC-FIL        PIC 9(04).
             03 C2CGC-DIG        PIC 9(02).
          02 C2INSCEST           PIC X(15).
          02 C2REPASSE           PIC 9(01).
          02 C2COMPRADOR         PIC 9(02).                                    
          02 C2TIPO-PAG          PIC X(02).
          02 C2COMISSAO          PIC 9(02).
          02 C2COND-PAG          PIC X(43).
          02 C2BLOQUEIO.
             03 C2TIPO-V         PIC X(02).
             03 C2MOTIV-BL       PIC X(01).
             03 C2QTD-BL         PIC 9(07).
          02 C2CONDI-COMPRAS.
             03 C2PERCICMS       PIC 9(02)V99.
             03 C2DESC-COM       PIC 9(02)V999.
             03 C2DIAS-COM       PIC 9(02).
             03 C2DESC-FIN       PIC 9(02)V999.
             03 C2DIAS-FIN       PIC 9(02).
*--------- Inclusao do c2abreveastura 
          02 C2ABREVEATURA       PIC X(10).
          02 FILLER              PIC X(02).
	  02 C2BCRDESC           PIC X(01).
	  02 C2QUEBRAPZ          PIC X(01).
	  02 C2DESCPADRAO        PIC 9(03)V99.
	  02 C2LINHA             PIC X(01).
	  02 C2PEDIDO-ELET       PIC X(01).
          02 C2COMPRASM.
             03 C2COMPRASMES     PIC 9(07).
             03 C2COMPRAS        PIC 9(07) OCCURS 6 TIMES.
          02 C2TIPO              PIC 9(02).
	  02 C2TPCOND            PIC 9(02).
*----------> c2filler1   passou c2centro  (11/08/2015)
	  02 C2CENTRO            PIC X(04).
	  02 C2CODCONT           PIC 9(02).
	  02 C2COMPMATRIZ        PIC X(01).
	  02 C2R3LEGADO          PIC X(01).
          02 C2GRUPO             PIC X(04).
          02 C2-TAB-HORTA.
             04 C2CONDVEND-HORTA OCCURS 30 TIMES.
                06 C2BLOQUEADO-HORTA
				 PIC 9(01).
          02 C2-TAB.
             04 C2CONDVEND       OCCURS 30 TIMES.
                06 C2BLOQUEADO   PIC 9(01).
	  02 C2FLAG-DIARIO       PIC X(001).
	  02 C2FLAG-MENSAL       PIC X(001).
	  02 FILLER              PIC X(176).
          02 C2DATASN.
             03 C2ULTAB.
                05 C2ANO-ULTAB   PIC 9(04).
                05 C2MES-ULTAB   PIC 9(02).
                05 C2DIA-ULTAB   PIC 9(02).
             03 C2ULCOM.
                05 C2ANO-ULCOM   PIC 9(04).
                05 C2MES-ULCOM   PIC 9(02).
                05 C2DIA-ULCOM   PIC 9(02).
             03 C2ULMAN.
                05 C2ANO-ULMAN   PIC 9(04).
                05 C2MES-ULMAN   PIC 9(02).
                05 C2DIA-ULMAN   PIC 9(02).
          02 C2MARCA             PIC X(001).
      *----------------------------------------------------------------*
      * CONDVEND : Ocorrencia 1  - Rio de Janeiro                      *
      *            Ocorrencia 2  - Minas Gerais                        *
      *            Ocorrencia 3  - Sao Paulo                           *
      *            Ocorrencia 4  - Espirito Santo                      *
      *            Ocorrencia 5  - Santa Catarina                      *
      *            Ocorrencia 6  - Parana                              *
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*

      *----------------------------------------------------------------*
      * Book :  PFC2S1                     Criacao : 17/02/93          *
      * Descricao : Arquivo auxiliar de Fornecedores ordenado por forn.*
      * Programas : PFP111B, PFP111                                    *
      * Tamanho   :      Bytes                                         *
      *----------------------------------------------------------------*
       FD PFC2S1.
       01 C2S1REGISTRO.
          03 C2S1CHAVE.
             05 C2S1RAZAO      PIC X(32).
             05 C2S1CODIGO     PIC 9(04).
          03 C2S1DIGITO        PIC 9(01).
      *----------------------------------------------------------------*
      *----------------------------------------------------*
      *  Arq. de Observacoes do Cadastro de Cliente pfc3a  *
      *  Organizacao Indexada                              *
      *  Chave ......: C3achave                            *
      *  Tamanho ....:                                     *
      *----------------------------------------------------*
       FD PFC3A.   
       01 C3AREGISTRO.
          03 C3ACHAVE.
             05 C3ACODIGO            PIC 9(06).
             05 C3ASEQUENCIA         PIC 9(02). 
	  03 C3AOBS                  PIC X(75).  
      *----------------------------------------------------*
      *----------------------------------------------------------------*
      *  ARQUIVO.........:  Cadastro de Clientes                       *
      *  ORGANIZACAO.....:  Indexado                                   *
      *  CHAVE DE ACESSO.:  C3CODIGO                                   *
      *  TAMANHO.........:  456                                        *
      *  DATA............:  1992 (Alter)                               *
      *----------------------------------------------------------------*
      *ALTERADO O CAMPO C3GRUPO DE 15 P/14 POS E CRIADO O C3ESPEC 1 POS*
      * PROGRAMADOR - ADRIANO - EM 07/01/94                            *
      *Alteracoes: O campo C3MALA passou a ser FILLER e o campo C3VEND-*
      *-PERF passou a ser C3TPCLI - Venicios - 27/05/96                *
      ******************************************************************
      * Atencao:  O campo C3REDE esta DESATIVADO o campo substituo e o *
      * C3REDE-NOVO. A partir de 31/07/2001 passa a valer o campo      *
      * C3REDE-NOVO. - Alan - 31/07/2001                               *
      *----------------------------------------------------------------*
      * Alteracao: O campo c3sequencia-alt pic 9(03) foi substituido   *
      * por c3farmalink-tv e c3filler2.            Otavio    04/10/06  *
      *================================================================*
      * Alterado campo C3PRACA para C3FLAG-QUEBRAPZ Adilson  18/05/09  *
      * Alterar  C3CEPCOB para C3ESCR-VENDA, FILLER Adilson  19/05/09  * 
      *----------------------------------------------------------------*
      * Substituicao do campo c3cdade-bristol 9(05) por c3tv-sap x(04) *
      * e filler x(01)                              Jorge    15/06/09  *
      * Alterado C3DEB-AGENC de 6 posicoes para 5 posicoes e incluido  *
      * C3FLAG-DEVOL com 1 posicao                  Marco    29/01/10  *
      * Alterado campo c3compl para c3blqprodlib    Adilson  27/08/10  *
      * Alterado c3blq-inter-for para c3flag-turno  Adilson  07/01/11  *
      * Substituir campos C3DEB-BANCO 9(003) e C3DEB-AGENC X(005) por  *
      * C3DATA-ALV-LOCAL 9(008)                     Adilson  23/05/13  *
      * Campo C3SUPERV-PERF 9(02) foi eliminado e substituido por um   *
      * filler 9(01) e o novo campo C3SALDO-RESERVA X(01).             *
      *                                             Jorge    13/11/14  *
      * Alteracao do C3DEB-CONTA DE X(07) PARA X(04) e criacao do campo*
      *              C3GRUPO-PRAZO COM X(03)        Jorge    16/05/2016*
      *                                                                *
      * Alteracao do C3DEB-CONTA DE X(04) PARA X(02) e criacao do campo*
      *              C3GRUPO-PRECO COM 9(02)        Jorge    24/05/2016*
      *================================================================*

       FD PFC3.
       01 C3REGISTRO.
          02 C3CODIGO.
             03 C3SETOR             PIC 9(002).
             03 C3SEQUENCIAL        PIC 9(003).
             03 C3DIGITO-VER        PIC 9(001).
          02 C3CODIGO1 REDEFINES C3CODIGO.
             03 C3DIGITO1           PIC 9(001).
             03 C3DIGITO2           PIC 9(001).
             03 C3DIGITO3           PIC 9(001).
             03 C3DIGITO4           PIC 9(001).
             03 C3DIGITO5           PIC 9(001).
             03 C3DIGITO6           PIC 9(001).
          02 C3CODIGO2 REDEFINES C3CODIGO.
             03 C3CODNUM            PIC 9(006).
      *
          02 DADOS-FIXOS.
             03 C3RAZAO             PIC X(032).
             03 C3ENDERECO          PIC X(032).
             03 C3MUNICIPIO.
                04 C3CIDADE         PIC X(020).
                04 C3BAIRRO         PIC X(020).
             03 C3ESTADO            PIC X(002).
             03 C3CEP               PIC X(008).
             03 C3CGC-CPF           PIC X(020).                       
             03 C3CPF REDEFINES C3CGC-CPF. 
                04 C3CPF03          PIC X(003).
                04 C3CPF09          PIC X(009).
                04 C3CPF01          PIC X(001).
                04 C3CPF02          PIC X(002).
                04 C3CPFRESTO       PIC X(005).
             03 C3CGC REDEFINES C3CGC-CPF. 
                04 C3CGC08          PIC X(008).
                04 C3CGC09          PIC X(001).
                04 C3CGC04          PIC X(004).
                04 C3CGC01          PIC X(001).
                04 C3CGC02          PIC X(002).
                04 C3CGCRESTO       PIC X(004).

             03 C3INSCEST           PIC X(015).
             03 C3TELEFONE          PIC X(012).
          02 DADOS-FATURA.
             03 C3LIMITE            PIC 9(005).
             03 C3BLQFOR            PIC 9(001).
             03 C3RECONFERE         PIC X(001).
      *      03 C3REDE              PIC 9(003).
	     03 C3FILLER            PIC 9(003).

             03 C3TIPO-LAYOUT REDEFINES C3FILLER.
		05 C3LAYOUT-ENTRADA PIC 9(001).
		05 C3LAYOUT-SAIDA   PIC 9(001).
**10042006      05 C3LAYOUT-RESP    PIC 9(001).
		05 C3FLAG-TURNO     PIC X(001).
             03 C3CARTBANCO         PIC 9(001).
          02 DADOS-COBRANCA. 
      *---------------------------------------------------------------
      *  redefinido em 06/05/97 AC Rosane/Eugenio por Simone
      *      03 C3SNFNF             PIC X(007).
      *---------------------------------------------------------------
      *  redefinido em 13/08/98 AC Rosane  por  Adilson
      *	     03 C3ROTA-ALT          PIC 9(003).
      *---------------------------------------------------------------
             03 C3CLASSIF           PIC X(002).
      *--------------------------------------------------------------*
      *  Troca do FILLER2 por ALVARA4                                *
      *  Alan - 29/08/98                                             *
      *--------------------------------------------------------------*
	     03 C3ALVARA1           PIC X(001).
**04102006   03 C3SEQUENCIA-ALT     PIC 9(003).
	     03 C3FARMALINK-TV      PIC 9(002).
**13122006 - N - nao   S - sim  E - Estadual 
	     03 C3LIB-TELEVEND      PIC X(001).
      *--------------------------------------------------------------*
      *  Troca do C3FILLER1 por ALVARA5                              *
      *  Alan - 29/08/98                                             *
      *--------------------------------------------------------------*
	     03 C3ALVARA2           PIC X(001).
      *--------------------------------------------------------------*
      *  Alterado C3ENDCOB X(032) para C3ENDERECO2 X(12), C3ENDNUMERO*
      *  X(010) e C3ENDCOMPL X(010)                - 05/09/08 Adilson*
      *--------------------------------------------------------------*
	     03 C3ENDERECO2         PIC X(012).
	     03 C3ENDNUMERO         PIC X(010).
	     03 C3ENDCOMPL          PIC X(010).
	     
	     03 C3BERLIM.
                05 C3TIPOCLI        PIC X(002).
                05 C3ZONAEST.
                   07 C3ZONA        PIC X(002).
                   07 C3SETO        PIC X(002).
      *---------------------------------------------------------------
      *  Redefinido os campos:
      *     - C3ACHE para C3ALVARA1;
      *     - C3MERREL2 para C3ALVARA2; 
      *     - C3FARMASA para C3ALVARA3 e
      *     - C3ZACHE   para C3FILLER3.
      *  Em 14/02/97, analista  EUGENIO e alterado por CALLEIA.
      *     - C3FILLER3 para C3TIPOCX. Em 18/04/97 por Marcos.
      *
      *------03 C3ACHE.
      *---------05 C3ZONAACH        PIC 9(002).
      *-------------------------------------------------------------------
             03 C3ALVARA3           PIC X(002).
             03 C3MERREL.
		05 C3MSGLIM         PIC X(001).
*-> 20/12/2005  05 C3ASSOCIACAO     PIC 9(002).
		05 C3CARTAO         PIC X(001).
		05 C3FLAG-REPAS     PIC X(001).
      *---------05 C3MERREL2        PIC 9(005).
             03 C3ALVARA4           PIC X(005).
             03 C3BRISTOL.
* 150609        05 C3CIDADE-BRISTOL PIC 9(005).
271109          05 C3FLAG-DESC-OL   PIC X(001).
150609          05 C3TV-SAP         PIC X(004).
*->             05 C3PRACA          PIC 9(001).
                05 C3FLAG-QUEBRAPZ  PIC X(001).
      *------------------------------------------
      *   REDEFINIDO EM C3BIOLAB PARA C3LOTE EM 22/01/97
      *          POR EUGENIO/SIMONE
      *      03 C3BIOLAB.
      *         05 C3ZONA-BIOLAB    PIC 9(002).
      *
      *   CAMPO C3ZONA-BYK DEFINIDO PARA C3LOTE EM 28/01/97
      *   COM UMA POSICAO NUMERICA A OUTRA POSICAO FILLER 9(01).
      *         POR EUGENIO/CALLEIA
      *      03 C3BYK.
      *         05 C3ZONA-BYK       PIC 9(002).
      *-------------------------------------------

      *-------------------------------------------
      *C3LOTE ALTERADO EM 10/03/2006 PARA C3GRP-BLQPROD E C3UF-CD-DEST
      *	     03 C3LOTE              PIC 9(003).
      *-------------------------------------------	     
	     03 C3GRP-BLQPROD       PIC X(001).
             03 C3UF-CD-DEST        PIC X(002).
      
      *----- C3ACUMULA =  1 -> Sim  0 -> Nao (Faturamento Acumulado)
	     03 C3ACUMULA           PIC 9(001).
    
      *------03 C3FARMASA.
      *---------05 C3ZONA-FARMASA   PIC 9(002).
             03 C3ALVARA5           PIC X(002).
             03 C3SANOFI.
                05 C3ZONA-SANOFI    PIC 9(003).
      *-----------------------------------------------------------------
      * Os programas que usam o campo C3JANSEN estao desativados, para
      * nao altera-los, montei esta configuracao - EUGENIO
      *-----------------------------------------------------------------
             03 C3JANSEN.
		05 C3IMS            PIC 9(004).
      *-- Mudou de C3FILLER4 para C3REGACHE --------------
		05 C3REGACHE        PIC 9(001).
      *-----------------------------------------------------------------
      * Alterado em 13/11/98 C3BLOQUEIO de 5 para 4 posicoes e criado
      * C3LIBCOBR (livre bloqueio de Cobranca S/N) AC Rosane por Adilson 
      * Alterado C3LIBCOBR para C3TPTRATAM em 06/07/1999-Otavio
      *-----------------------------------------------------------------     
	     03 C3BLOQUEIO          PIC X(004).
	     03 C3TPTRATAM          PIC X(001).
             03 C3ALTERA            PIC X(001).
             03 C3MAILING           PIC X(001).
      *** O campo c3atualizado e usado nos programas, FAT106, TMS102 e PFP13
      *** Valores; "ESPACO" = nao foi alterado,
      ***          "A"      = foi alterado pelo PFP13
      ***          "B"      = ja foi enviado para outro estado
      *** em 24/10/97 por OTAVIO.

             03 C3ATUALIZADO        PIC X(001).
             03 C3DIVISAO.
                05 C3REGIAO         PIC 9(001).
                05 C3PARTE          PIC 9(003).
                05 C3VENDEDOR       PIC 9(001).
             03 C3CILAG             PIC 9(005).
             03 C3BLQPRODLIB        PIC X(001).
*->          03 C3CEPCOB            PIC 9(005).
             03 C3ESCR-VENDA        PIC X(004).
             03 C3LIB-NACESSO       PIC X(001).
	  02 C3DADOS-CONSULTA.
             03 C3COMPRADOR         PIC X(015).
             03 C3FAX               PIC X(015).
             03 C3MAIOR-COMPRA.
                05 C3ZONA-PERF      PIC 9(002).
                05 C3TPCLI          PIC 9(002).
      *---------05 C3ZACHE          PIC 9(001).
      *---------05 C3FILLER3        PIC 9(001).
                05 C3TIPOCX         PIC 9(001).
      **********************************************************
      * excluido o campo C3BALDACCI para dar lugar ao campo
      * C3HORARIO, que guarda o inicio do expediente do cliente.
      *      03 C3BALDACCI          PIC 9(005).
	     03 C3HORARIO.
		05 C3HORA           PIC 9(002).
		05 C3MINUTO         PIC 9(002).
             03 C3PROMOCAO          PIC X(001).
      *-----------------------------------------------------------------
      * Alterado em 11/11/08 C3CODIKF passando para C3COD-MUNICIPIO      
      *-------------------------------------- Ac Marco Antonio      ----     
      *      03 C3CODIKF            PIC 9(007).
             03 C3COD-MUNICIPIO     PIC 9(007).
      *-----------------------------------------------------------------
      * Alterado em 20/11/98 C3INFORMACAO que passa de 4 ocorrencias com
      * PIC X(30) para X(01), acrescentado C3DATA-CAD e um FILLER de 111
      * Em 09/12/98 acrescentado campo C3CURVA X(02), FILLER passa p/109
      *-------------------------------------- Ac Rosana por Adilson ----     
	     03 C3INFORMACAO        PIC X(001).
	     03 C3DATA-CAD.
		05 C3ANO-CAD        PIC 9(004).
		05 C3MES-CAD        PIC 9(002).
		05 C3DIA-CAD        PIC 9(002).
	     03 C3CURVA             PIC X(002). 
	     03 C3CHEQUE-FUNDOS     PIC 9(001).
	     03 C3DATACH-FUNDOS.
		05 C3DD-DATACH-FUNDOS     PIC 9(002).
		05 C3MM-DATACH-FUNDOS     PIC 9(002).
		05 C3AA-DATACH-FUNDOS     PIC 9(004).
	     03 C3DATA-ALVARA.
		05 C3ANO-ALV        PIC 9(004).
		05 C3MES-ALV        PIC 9(002).
		05 C3DIA-ALV        PIC 9(002).
	     03 C3DATA-ALT.
		05 C3ANO-ALT        PIC 9(004).
		05 C3MES-ALT        PIC 9(002).
		05 C3DIA-ALT        PIC 9(002).
             03 C3FILIAL            PIC 9(002).
	     03 C3PESSOA-FJ         PIC X(001).
*-> 25/03/08 03 C3FILIAL-FISICO     PIC 9(002). c3grupocli
	     03 C3GRUPOCLI          PIC X(002).
	     03 C3HORTA             PIC X(001).
	     03 C3ICMS-RETIDO       PIC X(001).
	     03 C3R3LEGADO          PIC X(001).
	     03 C3ENT-REP           PIC X(001).
	     03 C3ACUMDIA           PIC X(001).
	     03 C3ACUMSEM           PIC X(001).
	     03 C3DEB-AUTOM         PIC X(001).
*-> 23/05/13 	     
*	     03 C3DEB-BANCO         PIC 9(003).
*	     03 C3DEB-AGENC         PIC X(005).
*->	     
	     03 C3DATA-ALV-LOCAL.
		05 C3ANO-ALV-LOCAL  PIC 9(004).
		05 C3MES-ALV-LOCAL  PIC 9(002).
		05 C3DIA-ALV-LOCAL  PIC 9(002).
	     03 C3FLAG-DEVOL        PIC X(001).

240516       03 C3DEB-CONTA         PIC X(002).
240516	     03 C3GRUPO-PRECO       PIC 9(002).

160516	     03 C3GRUPO-PRAZO       PIC X(003).
	     03 C3ASSOCIA           PIC 9(003).
	     03 C3BCRDESC           PIC X(001).
	     03 C3PED-ELETR         PIC X(001).
	     03 C3FLAG-BLQTDE       PIC X(001).
	     03 C3ARQMSG            PIC X(001).
	     03 C3CODIGO-SAP        PIC 9(009).
	     03 C3TPCLI-HORTA       PIC 9(002).
             03 C3REDE-NOVO         PIC 9(005).
	     03 C3TP-LIB            PIC X(001).
	     03 C3TP-LIB-HORTA      PIC X(001).
	     03 C3FLAG-INTER        PIC X(001).
	     03 C3TEL-TELEVEND      PIC X(012).
	     03 C3FLAG-TARIFA       PIC X(001).
             03 C3SERASA-PERC       PIC 9(003).
	     03 C3SERASA-PG         PIC X(001).
	     03 C3FLAG-SALMIN       PIC X(001).
	     03 C3CLIENTE-GC        PIC X(001).
	     03 C3ALVARA-ESP        PIC X(001). 
	     03 C3CODBAIRRO         PIC 9(006).
	     03 C3BLQ-PROD          PIC X(001).
	     03 C3SUBSETOR          PIC X(003).
	     03 C3GRUPO             PIC X(014).
          02 C3ESPEC                PIC X(001).
          02 C3DADOS-ENTREGA.
             03 C3SUPERV-MEDI       PIC 9(002).
             03 C3ROTA              PIC 9(003).

*131114      03 C3SUPERV-PERF       PIC 9(002).
             03 C3FILLER5           PIC 9(001).
             03 C3SALDO-RESERVA     PIC X(001).

             03 C3SEQUENCIA         PIC 9(003).

      *----------------------------------------------------------------*
      *   C3TP-LIB           - Tipo de Produto liberado para compra    *
      *   C3TP-LIB-HORTA     - Tipo de Produto liberado para compra    *
      *                        M - Compra so medicamento               *
      *                        P - Compra so perfumaria                *
      *                        A - Compra medicamento e perfumaria     *
      *   C3SERASA-PERC      - Percentual de envio para Serasa         *
      *   C3SERASA-PG        - Envia pagto automatico Serasa S/N       *
      *   C3flag-salmin      - CRITICA SALDO MINIMO DO PRODUTO (S/N)   *
      *   C3CLIENTE-GC       - Cliente Grandes Contas (S/N)            *
      *   C3ALVARA-ESP       - Cliente possui alvara esp  para comprar *
      *                        determinado produto (S/N)               *
      *   C3BCRDESC          - Calcula BCR com desconto (S/N)          * 
      *   C3PED-ELETR        - Cliente de pedido eletronico (S/N)      *
      *   C3FLAG-BLQTDE      - Critica de Bloqueio Prod Motivo 1 (S/N) *
      *   C3FLAG-REPAS       - Define criterio de calculo Repas  (S/N) *
      *   C3GRUPOCLI         - Grupo de clientes no SD SAP             *
      *   C3R3LEGADO         - Clientes com faturamento pelo SAP (S/N) *
      *   C3PESSOA-FJ        - Pessoa F-Fisica ou J-Juridica           *
      *   C3LIB-NACESSO      - Campo que informa se cliente esta libe- * 
      *                        rado da critica de bloq de  faturamento *
      *                        por execeder numero de acesso S-Liberado*
      *   C3FLAG-DESC-OL     - Campo que informa se cliente excecao, CD*
      *                        MG nao direciona para desc fin          *
      *   C3BLQPRODLIB       - Bloq de produtos liberados  X=Bloqueado *
      *   C3FLAG-TURNO       - Campo que informa se cliente de excecao *
      *                        para entrega no dia. Atualizado pelo arq*
      *                        grupo_sap.txt gerado pelo SAP           *
      *   C3DATA-ALV-LOCAL   - Validade do alvara VISA para bloqueio de*
      *                        Antibiotico                             *
      *----------------------------------------------------------------*
       
       FD  PFC3SAP.
       01  C3SAP-REG.     
           05 C3SAP-CHAVE.
              10 C3SAP-CD             PIC 9(02). 
              10 C3SAP-CLISAP         PIC 9(06). 
           05 C3SAP-CD-1              PIC 9(02). 
           05 C3SAP-CLISAP-1          PIC 9(06). 
           05 C3SAP-CD-2              PIC 9(02). 
           05 C3SAP-CLISAP-2          PIC 9(06). 
           05 C3SAP-CD-4              PIC 9(02). 
           05 C3SAP-CLISAP-4          PIC 9(06). 
           05 C3SAP-CD-5              PIC 9(02). 
           05 C3SAP-CLISAP-5          PIC 9(06). 
           05 C3SAP-CD-6              PIC 9(02). 
           05 C3SAP-CLISAP-6          PIC 9(06). 
           05 C3SAP-CD-9              PIC 9(02). 
           05 C3SAP-CLISAP-9          PIC 9(06). 
           05 C3SAP-CD-10             PIC 9(02). 
           05 C3SAP-CLISAP-10         PIC 9(06). 
           05 C3SAP-CD-11             PIC 9(02). 
           05 C3SAP-CLISAP-11         PIC 9(06). 
           05 C3SAP-CD-12             PIC 9(02). 
           05 C3SAP-CLISAP-12         PIC 9(06). 
           05 C3SAP-CD-30             PIC 9(02). 
           05 C3SAP-CLISAP-30         PIC 9(06). 

      *----------------------------------------------------------------*
      *  ARQUIVO.........:  Cadastro de Gerente                        *
      *  ORGANIZACAO.....:  Indexado                                   *
      *  CHAVE DE ACESSO.:  C4GCODIGO + C4SCODIGO                      *
      *  TAMANHO.........:  032                                        *
      *  DATA............:  2002 (Alter)                               *
      *----------------------------------------------------------------*
       FD PFC4G.
       01 C4GREGISTRO.
          03 C4GCODIGO.
             05 C4GERENTE            PIC 9(002).
          03 C4GNOMEGERENTE          PIC X(030).
      *----------------------------------------------------------------*
 
      *----------------------------------------------------------------*
      *  ARQUIVO.........:  Cadastro de Vendedores                     *
      *  ORGANIZACAO.....:  Indexado                                   *
      *  CHAVE DE ACESSO.:  C4CODIGO                                   *
      *  TAMANHO.........:  172                                        *
      *  DATA............:  1992 (Alter)                               *
      *----------------------------------------------------------------*
       FD PFC4.
       01 C4REGISTRO.
          03 C4CODIGO.
             05 C4VENDEDOR           PIC 9(003).
          03 C4NOME                  PIC X(013).
          03 C4NOME-COMPLETO         PIC X(030).
          03 C4ENDERECO              PIC X(040).
          03 C4MUNICIPIO             PIC X(020).
          03 C4ESTADO                PIC X(002).
          03 C4CPF                   PIC X(015).
          03 C4TELEFONE              PIC X(012).
          03 C4COTA-MES              PIC 9(013)V99.
	  03 C4RECPROM               PIC X(01).
          03 C4COTA-PROMOCAO.
             05 C4UNIDADES           PIC 9(006).
             05 C4VENDA              PIC 9(013)V99.
      *----------------------------------------------------------------*
 
      *----------------------------------------------------------------*
      *                                                                *
      *  Objetivo: Cadastro de Supervisor                              *
      *                                                                *
      *  CHAVE DE ACESSO:  C4R-SETOR                                   *
      *  Programador:      Jorge Ferraz                                *
      *  Eh povoado pelo:  peg002                                      *
      *  Data...........:  04/02/2011                                  *
      *                                                                *
      *----------------------------------------------------------------*

       FD PFC4REP.
       01 C4R-REG.
	  03 C4R-CHAVE.
             05 C4R-SETOR              PIC 9(03).
          03 C4R-NOME-SETOR            PIC X(34).
	  03 C4R-NOME-SUPERV           PIC X(35). 
	  03 C4R-CPF-SUPERV            PIC 9(11). 
          03 C4R-CGC-VENDEDOR          PIC 9(14).
          03 C4R-CPF-VENDEDOR          PIC 9(11).
          03 C4R-NOME-VENDEDOR         PIC X(35). 
	  03 C4R-CODIGO-FILIAL         PIC 9(03).
	  03 C4R-DESC-FILIAL           PIC X(21).
	  03 C4R-ATIVO-INATIVO         PIC X(01).
	  03 FILLER                    PIC X(20).

      *----------------------------------------------------------------*
      *  ARQUIVO.........:  Cadastro de Supervisor                     *
      *  ORGANIZACAO.....:  Indexado                                   *
      *  CHAVE DE ACESSO.:  C4SCODIGO                                  *
      *  TAMANHO.........:  034                                        *
      *  DATA............:  2002 (Alter)                               *
      *----------------------------------------------------------------*
       FD PFC4S.
       01 C4SREGISTRO.
          03 C4SCODIGO.
             05 C4SGERENTE           PIC 9(002).
             05 C4SUPERVISOR         PIC 9(002).
          03 C4SNOMESUPERV           PIC X(030).
      *----------------------------------------------------------------*
 
      *----------------------------------------------------------------*
      *            Arquivo de Parametros para Faturamento              *
      * inclusao do campo c5seqeletr.             em 22/05/2001 Otavio *
      * Alterado c5saida para c5numnota-trans reg 1  01/07/2010 Adilson*
      * Alterado o C5SEQESPEL para C5QTDE-GDE-VOL para aumento do campo*
      * de 02 para 04 bytes.                         22/04/2013 Jorge  *
      * Alterado c5seq-roi 9(04) para 9(03) e incluido  campo c5cubeta-*
      * termica x(01) reg 4                          25/06/2018 Adilson*
      *----------------------------------------------------------------*
      * Substituir o campo c5unific-espelho por c5LibEspMistSemErro.   *
      *                                              18/Set/2019 Otavio*
      *|---|---------------------------|-------------------------------|
      *    Eliminar espelho A4.                     10/Nov/2021 Otavio *
      *  Inclusao do campo c5PickListEtqA4. E=etiqueta, A=espelho A4.  *
      *|---|---------------------------|-------------------------------|
      * Alterar campo c5banco para c5serie-NF reg.1 21/Fev/2022 Adilson*
      *|---|---------------------------|-------------------------------|
      * Alterar campo c5otn decimal (2) cria do campo :Fev/2022 Adilson*
      *|---|---------------------------|-------------------------------|

       FD PFC5.
      *-----------------------*
      * Registro 0            *
      *-----------------------*
       01 C5REGISTRO0.
          03 FILLER           PIC 9(01).
          03 C5SEQPED0        PIC 9(05).
	  03 C5LOTEBAI0       PIC 9(04).
	  03 C5NUMCOTACAO     PIC 9(06).

          03 C5DATAFAT-ANT    PIC 9(08).
          03 FILLER REDEFINES C5DATAFAT-ANT.
             05 C5AAFAT-ANT   PIC 9(04).
             05 C5MMFAT-ANT   PIC 9(02).
             05 C5DDFAT-ANT   PIC 9(02).
	  03 C5FLAG-ABREDIA   PIC X(01).
	  03 C5FILLER0        PIC X(09).
	  
       01 C5REGISTRO.       
          03 C5CHAVE.
             05 C5FIXO        PIC 9(01).
          03 C5OTN            PIC 9(05).
          03 C5SERIENF-TRANS  PIC 9(02).
          03 C5NUMNOTA        PIC 9(06).
	  03 C5QUEBRA-DIV     PIC X(01). 
	  03 C5VERIF-LOTE     PIC X(01).
          03 C5SERIE-NF       PIC 9(03).
          03 C5OPERLOGIST     PIC X(01).
          03 C5TURNO          PIC 9(01).
	  03 C5DIASMODEM      PIC 9(01).
          03 C5NUMNOTA-HORTA  PIC 9(06).
          03 C5NUMNOTA-TRANS  PIC 9(06).

       01 C5REGISTRO2.
          03 FILLER           PIC 9(01).
	  03 C5LOTE-ESPELHO   PIC 9(03).
	  03 C5ESPAUT         PIC X(01).
	  03 C5ENVIO          PIC X(01).
	  03 C5MAQ-SEP        PIC X(01).
	  03 C5MOD-ESP        PIC X(01).
	  03 C5PROD-PEMM      PIC 9(04).
	  03 C5CLIE-PEEM      PIC 9(04).
	  03 C5NUMNF-PRG-ANT  PIC 9(06).
*->051011 03 C5NUMNF-PRG-ATU  PIC 9(06).
**220413  03 C5SEQESPEL       PIC 9(05).
220413	  03 C5QTDE-GDE-VOL   PIC 9(04).
220413	  03 C5flag-itinera   pic x(01). *> (S - impressao do resumo de busca)
	  03 c5flag-cubeta    PIC X(01).
**220413  03 C5QTDE-GDE-VOL   pic 9(02). 
          03 c5roman-qtde-itens pic 9(02). *> valores validos > 2 and < 50
	  03 c5imp-esp-linha3 pic x(01).
**18Set201903 c5unific-espelho pic x(01). *> unificacao espelhos 21-03-09Otavio 
	  03 c5LibEspSemErro  pic x(01). *> S/N                                 
**2103200903 FILLER           PIC X(03).
**1307200903 FILLER           PIC X(02).
          03 C5FLAG-sap       PIC X(01). *> Filial Totalmente SAP. 
          03 c5contingencia   PIC X(01). *> da Knapp<=N, COBOL<=S

       01 C5REGISTRO3.
          03 FILLER           PIC 9(01).
	  03 C5SEQ-CUB        PIC 9(05).
	  03 C5SEQ-AVI        PIC 9(006).
	  03 C5SEQ-BO         PIC 9(006).
	  03 C5SEQ-E1         PIC 9(006).
	  03 C5SEQ-REC        PIC 9(006).
	  03 C5DIA-CREDITO    PIC X(003).
**10Nov21 03 FILLER           PIC X(001).
	  03 c5PickListEtqA4  pic x(01).  *> E=etiqueta ou A=espelho A4
       
       01 C5REGISTRO4.
          03 FILLER           PIC 9(01).
	  03 C5ROTAI          PIC 9(03).
	  03 C5ROTAF          PIC 9(03).
**160207  03 C5LOTEBAI        PIC 9(03).
	  03 C5OCUPACAO-PALET PIC 9(03).
	  03 C5SEQPED         PIC 9(05).
	  03 C5ATRASO         PIC 9(02).
	  03 C5SEQELETR       PIC 9(06).
250618	  03 C5CUBETA-TERMICA PIC X(01).
	  03 C5SEQ-ROI        PIC 9(03).

**10/10/2001  incluido para atender o projeto Beta Otavio.
**160207  03 C5TIPOVENDBETA.
**160207     05 C5TVBETA1     PIC 9(02).
**160207     05 C5TVBETA2     PIC 9(02).

          03 c5lotebai        pic 9(04).

	  03 c5percsemana     PIC 9(02).
	  03 c5cor-vol-lin3   PIC X(01).

*------------------------------------------------------------------*
* Registro 5 que indica se o faturamento esta bloqueado / suspenso *
*------------------------------------------------------------------*

       01 C5REGISTRO5.
          03 FILLER           PIC 9(01).
          03 C5BLQFAT         PIC X(01).
       
*** C5DTPFAT. data do primeiro faturamento do mes.
	  03 C5DTPFAT.
	     05 C5ANOFAT.
	        07 C5ANOPFAT1 PIC 9(02).
	        07 C5ANOPFAT2 PIC 9(02).
             05 C5MESPFAT     PIC 9(02).
             05 C5DIAPFAT     PIC 9(02).

*** C5DIAUFAT. dia do ultimo faturamento.
          03 C5DIAUFAT        PIC 9(02).

          03 C5EMPRESA.
	     05 C5ESTADO      PIC 9(01).
	     05 C5TIPOEMP     PIC 9(01).
	     05 C5SEQ         PIC 9(01).
          03 C5BLQTELEV       PIC X(01).

*** C5ESTADO       1=RJ, 2=MG, 3=SP, 4=ES, 5=...
*** C5TIPOEMP      1=Matriz, 2=Filial e 3=Polo.
*** C5SEQ          1=Caso tenha mais de uma emp. no mesmo UF e C5TIPOEMP.
*** C5BLQTELEV     S=bloqueia Televendas, N=Televendas Liberado.
          03 C5UF             PIC X(02).
*Unidade federativa da empresa
********* 03 C5VLRBOLETA-M    PIC 9(03)V99.
          03 C5EMPFAT         PIC 9(02).
	  03 C5APELIDO        PIC X(002).
          03 C5CONFLOTE       PIC X(01).
          03 C5BLQPEDEL       PIC X(01).
	  03 C5VLRBOLETA-P    PIC 9(04)V99.
	  03 C5ONLINE         PIC 9(01). 
	  03 C5TP-CX          PIC X(01).
	  03 C5EMIT-ETIQ      PIC X(01).
	  03 C5EMIT-ETIQ-AUT  PIC X(01).
**** C5TP-CX       P=Palelao,  C=Cubeta ou Cx. Plastica.

**** C5EMIT-ETIQ   S=Sim, vai ser impressa etiqueta no processo de 
****	           separacao(inicio)

**** C5ONLINE      0=Televendas esta OFF LINE.
****               1=Televendas esta ON  LINE.
      *-----------------------*
      * Registro 6 Itinerario *
      *-----------------------*

       01 C5REGISTRO6.
          03 FILLER           PIC 9(01).
          03 C5DTCADERNO      PIC 9(08).
          03 FILLER REDEFINES C5DTCADERNO.
             05 C5ANOCAD      PIC 9(04).
             05 C5MESCAD      PIC 9(02).
             05 C5DIACAD      PIC 9(02).
          03 C5LOTEITI        PIC 9(03).
          03 C5DTFIMCAD       PIC 9(08).
          03 FILLER REDEFINES C5DTFIMCAD.
             05 C5ANOCDF      PIC 9(04).
             05 C5MESCDF      PIC 9(02).
             05 C5DIACDF      PIC 9(02).
	  03 FILLER           PIC X(02).
	  03 C5VAL-MIN-SIMREM PIC 9(06)V99.
	  03 C5MANIF-CARGA    PIC 9(04).

      *-----------------------*
      * Registro 7            *
      *-----------------------*
       01 C5REGISTRO7.
          03 FILLER           PIC 9(01).
          03 C5etiq-seq       PIC 9(08). *> antigo c5seqent
	  03 C5SEQ-PLANETACE  PIC 9(01).
	  03 C5SEQ-PLANETASE  PIC 9(03).
	  03 C5SEQ-SAP        PIC 9(05).
          03 C5INCLUI-PRODUTO PIC X(01).
          03 C5INCLUI-FORNEC  PIC X(01).
          03 C5INCLUI-CLIENTE PIC X(01).
          03 C5DIAS-ULTCOM    PIC 9(03).
	  03 C5DIAS-ATSDUP    PIC 9(02). 
	  03 C5DIAS-PRAZO     PIC 9(03).
	  03 C5VLRMINBOAUTOM  PIC 9(05).

      *-----------------------*
      * Registro 8            *
      *-----------------------*
       01 C5REGISTRO8.
          03 FILLER           PIC 9(01).
          03 C5ENTRADA        PIC 9(04).
	  03 C5LIVRO-ENTRADA  PIC 9(07).
	  03 C5MAQUINA-CT     PIC X(06).
	  03 C5CALLCENTER     PIC X(01).
*21/10/05 03 C5VAL-MIN-PERF   PIC 9(05)V99. Adilson
	  03 C5VAL-COB-FRETE  PIC 9(05)V99.
	  03 C5BLQ-ALTPZ      PIC X(01).
          03 C5PZ-CND-NEG     PIC 9(02).
	  03 C5PZ-CND-PROM    PIC 9(03).
          03 FILLER           PIC X(02).
      
      *-------------------------*
      * Registro 9 Datas 8 pos. *
      *-------------------------*
       01 C5REGISTRO9.
          03 FILLER           PIC 9(01).
          03 C5DATAEMI        PIC 9(08).
          03 FILLER REDEFINES C5DATAEMI.
             05 C5AAEMI.
		07 C5AAEMI1   PIC 9(02).
		07 C5AAEMI2   PIC 9(02).
             05 C5MMEMI       PIC 9(02).
             05 C5DDEMI       PIC 9(02).
          03 C5DATASAI1       PIC 9(08).
          03 FILLER REDEFINES C5DATASAI1.
             05 C5AASAI1      PIC 9(04).
             05 C5MMSAI1      PIC 9(02).
             05 C5DDSAI1      PIC 9(02).
          03 C5DATASAI2       PIC 9(08).
          03 FILLER REDEFINES C5DATASAI2.
             05 C5AASAI2      PIC 9(04).
             05 C5MMSAI2      PIC 9(02).
             05 C5DDSAI2      PIC 9(02).
**170907  03 FILLER           PIC X(09).

          03 C5DATAFAT        PIC 9(08).
          03 FILLER REDEFINES C5DATAFAT.
             05 C5AAFAT       PIC 9(04).
             05 C5MMFAT       PIC 9(02).
             05 C5DDFAT       PIC 9(02).
          03 FILLER           PIC X(01).
      ******************************************************
      * Arquivo..: Bloqueio de Cliente p/ Laboratorio      *
      ******************************************************
       FD PFC7.
       01 C7REGISTRO.
          03 C7CHAVE.
             05 C7CLIENTE     PIC 9(06).
             05 C7CODFOR      PIC 9(04).
      *----------------------------------------------------------------*
      *  Arquivo.........:  Duplicatas a Receber                       *
      *  atencao o campo d4nsequencia, passou a receber dados alfanume-*
      *  ico, motivo nova filial                              _ Marco  *
      *----------------------------------------------------------------*
       FD PFD4N.
       01 D4NREGISTRO.
          03 D4NCHAVE.
             05 D4NDUPLICATA   PIC 9(06).
             05 D4NSEQUENCIA   PIC X(02).
          03 D4NCLIENTE        PIC 9(06). 
          03 D4NPRAZO-ANT      PIC 9(02).
          03 D4NDATAEMI        PIC 9(08).
          03 FILLER  REDEFINES D4NDATAEMI.
             05 D4NANOEMI      PIC 9(04).
             05 RD4E REDEFINES D4NANOEMI.
                10 D4NANOEMI-1 PIC 9(02).
                10 D4NANOEMI-2 PIC 9(02).
             05 D4NMESEMI      PIC 9(02).
             05 D4NDIAEMI      PIC 9(02).
          03 D4NDATAVEN        PIC 9(08).
          03 FILLER  REDEFINES D4NDATAVEN.
             05 D4NANOVEN      PIC 9(04).
             05 RD4E REDEFINES D4NANOVEN.
                10 D4NANOVEN-1 PIC 9(02).
                10 D4NANOVEN-2 PIC 9(02).
             05 D4NMESVEN      PIC 9(02).
             05 D4NDIAVEN      PIC 9(02).
	  03 D4NETIQUETA       PIC 9(01).
          03 D4NCREDITO        PIC 9(01).
          03 D4NACUMULA        PIC 9(01).
          03 D4NCNDACUM        PIC X(01).
          03 D4NREM            PIC 9(01).
          03 D4NQTD            PIC 9(05).
          03 D4NCOND           PIC X(02).
          03 D4NVALOR          PIC 9(11)V99.       
          03 D4NVALMERC        PIC 9(11)V99.       
          03 D4NDESCONTO       PIC 9(11)V99.       
          03 D4N-CRED          PIC 9(11)V99.       
          03 D4NSITUACAO       PIC 9(01).
          03 D4NBANCO          PIC 9(03).
          03 D4NTITULO         PIC X(13).
          03 D4NFLAGCANC       PIC 9(01).
          03 D4NDATASAI        PIC 9(08).
          03 FILLER  REDEFINES D4NDATASAI.
             05 D4NANOSAI      PIC 9(04).
             05 RD4S REDEFINES D4NANOSAI.
                10 D4NANOSAI-1 PIC 9(02).
                10 D4NANOSAI-2 PIC 9(02).
             05 D4NMESSAI      PIC 9(02).
             05 D4NDIASAI      PIC 9(02).
	  03 D4NTIPOFAT        PIC X(01).
	  03 D4N-DESCNF        PIC 9(10)V99.
	  03 D4N-HORTA         PIC X(01).
	  03 D4N-ICMRET        PIC 9(09)V99.
	  03 D4N-CODSUB        PIC 9(02).
	  03 D4N-INBOUND       PIC X(01).
	  03 D4N-CD-ORIGEM     PIC 9(02).
	  03 D4N-CD-DESTINO    PIC 9(02).
	  03 D4N-PARTE         PIC 9(01).
	  03 D4N-FLAG-DESP-BC  PIC 9(01).
          03 D4NPRAZO          PIC 9(03).
   	  03 D4N-PROJETO       PIC 9(01).
   	  03 D4N-PARCELADA     PIC 9(01).
	  03 D4N-VALFRETE      PIC 9(06)V99.
	  03 D4Nreserva        PIC X(01).
	  03 D4NFILLER         PIC X(07).
      *----------------------------------------------------------------*
      * D4nsituacao -  1. Carteira                                     *
      *                2. Cheque                                       *
      *                3. Banco                                        *
      * D4netiqueta -  0-Medicamento, 1-Perfumaria, 2-Ambos
      *----------------------------------------------------------------*
      * D4NJUROS - Campo Subst. p/D4N-CRED. Adriano - 02/09/96.        *
      * 08/04/97 - Alteracao do Cpo D4NFILLER p/ D4NACUMULA e FILLER   *
      *                                                       Adriano. *
      *----------------------------------------------------------------*
      * D4NACUMULA - 0 = Nao Acumulado        1 = Ja Foi Acumulado     *
      * D4NCNDACUM - S/N Conforme Condicao p/Acumular.        Adriano  *
      *----------------------------------------------------------------*
      * D4NDATASAI   - Data da Saida da N.Fiscal.   10/06/1997         *
      * D4NTITULO    - Passou de 11 p/13 Posicoes.                "    *
      * D4NFILLER    - Area P/Futura Implementacoes.              "    *
      * D4N-DESCNF   - Desconto Especial.           10/11/1999. Adriano*
      * D4N-HORTA    - S=Dupl do projeto horta  N=Dupl normal          *
      * D4N-INBOUND  - 'S' Enviado para o R3        29/12/2000  Simone *
      * D4N-ICMRET   - Vlr do icm com substituicao  03/07/2000  Alan   *
      * D4N-VALFRETE - Vlr do Frete cobrado         23/12/2004  Adilson*
      *----------------------------------------------------------------*
      * D4NPRAZO     - Novo prazo com 3 posicoes    05/05/2003  Marco  *
      * D4N-PROJETO  - 0-Normal, 1-Petroleo Incentivado, 2-Ouro,       *
      *                3-Peroleo Normal, 5-WI, 6-Inter Real            *
      * D4N-PARCELADA- 0-Normal, 1-Dupl parcelada   21/10/2003  Adilson*
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
      * Arquivo : Tabela de mes e ano de fechamento                    *
      * Objetivo: Bloquear a execucao do fat106 caso o prog. pffecham  * 
      *           nao conclua o processamento.                         *
      *                                                                *
      * Obs.: fecham-flag = 'R' caso seja feito reprocessamento dentro *
      *       do mesmo mes.                                            *
      *----------------------------------------------------------------*
       FD  pffecham.
       01  fecham-registro.
	   03 fecham-chave.  
	      05 fecham-ano         PIC 9(04).
	      05 fecham-mes         PIC 9(02).
	   03 fecham-data           PIC 9(08).   
	   03 fecham-flag           PIC x(01).    
	   03 fecham-filler         PIC x(10).    
      ******************************************************
      * ARQUIVO         : ROTEIRO DE ENTREGAS              *
      * ORGANIZACAO     : INDEXADO                         *
      * CHAVE DE ACESSO : M15CHAVE                         *
      * TAMANHO         : 46                               *
      ********************************************************************
      * alterado em 16/03/95 rota e sequencia de 5 para 3 bytes - Rosane *
      * alterado em 09/04/96 m15flag e m15proximo-a de 2 para 3 bytes    *
      * Venicios                                                         *
      * alterado em 06/05/96 para gravar m15flag-polo e m15proximo-polo  *
      * Monica                                                           *
      ********************************************************************
       FD  PFM15.
       01  M15REGISTRO.
           02 M15CHAVE.
              03 M15ROTA        PIC 9(3).
              03 M15SEQUENCIA   PIC 9(3).
              03 M15CLIENTE     PIC 9(6).
              03 M15NOTA        PIC 9(6).
           02 M15FLAG           PIC 9(3).
           02 M15PEDIDO         PIC 9(4).
           02 M15VALOR          PIC 9(9)V99.
           02 M15FAT-ACUM       PIC x(1).
           02 M15TURNO          PIC 9(1).
           02 M15UNIDADES       PIC 9(6).
	   02 M15FLAG-POLO      PIC 9(3).
       01  M15REGISTRO-A.
           02 M15CHAVE-A.
              03 FILLER         PIC 9(18).
           02 FILLER            PIC 9(13).
           02 FILLER            PIC 9(10). 
           02 M15PROXIMO-A      PIC 9(03).
           02 M15PROXIMO-POLO   PIC 9(03).
*----------------------------------------------------------------------*
* M15FAT-ACUM -> Para uso da boleta acumulada                          *
*      0 - Normal. Registro referente a uma nota fiscal                *
*      1 - boleta acumulada. O registro refere-se a uma boleta         *
*      2 - Sem boleta. A boleta desta nota esta sendo acumulada        *
*      3 - Boleta para Matriz. A boleta sera emitida, porem sera enca- *
*          minhada diretamente para a matriz da rede DESCONTAO         *
*                                  21/08/97 Rosane                     *
*----------------------------------------------------------------------*
*---------------------------------------------------------------------*
* 22/08/2013: Inclusao do campo PLI-TURNO.                    Jorge   *
*---------------------------------------------------------------------*
* 13/12/2018: Alteracao do campo PLI-PLACA-NUMERO de 9(04) para x(04) *
*                                                             Jorge   *
*---------------------------------------------------------------------*

*   Sistema.....: Frete                                               *
*   Arquivo.....: Cadastro de placa x itinerario.                     *
*                 fisico "/d/dados/placaiti"                          *
*   Analista....: Sergio/Otavio/Marcelo                               *
*   Data Inicio.: 03/04/2006                                          *
*---------------------------------------------------------------------*

       FD PLACAITI. 
       01 PLI-REG.   
          03 PLI-CHAVE.
	     05 PLI-FILIAL            PIC X(04).
	     05 PLI-CARRO.
	        07 PLI-DATA-EMISSAO.
	           09 PLI-ANOEMI      PIC 9(04).
		   09 PLI-MESEMI      PIC 9(02).
		   09 PLI-DIAEMI      PIC 9(02).
                07 PLI-NUM-ITINERARIO PIC 9(05).
             05 PLI-PLACA.                            
		07 PLI-PLACA-LETRA    PIC X(03).
		07 PLI-PLACA-NUMERO   PIC X(04).

**050406  03 PLI-ID-EQUIPAMENTO       PIC 9(07).

**050406  03 PLI-DATA-SAIDA.   
**050406     05 PLI-ANOSAI            PIC 9(04).
**050406     05 PLI-MESSAI            PIC 9(02).
**050406     05 PLI-DIASAI            PIC 9(02).

          03 PLI-LOG.
             05 PLI-INCLUSAO.
                07 PLI-DATA-INC       PIC 9(08).
                07 PLI-HORA-INC       PIC 9(06).
                07 PLI-USR-INC        PIC X(08).  
             05 PLI-ALTERACAO.
                07 PLI-DATA-ALT       PIC 9(08).
                07 PLI-HORA-ALT       PIC 9(06).
                07 PLI-USR-ALT        PIC X(08).

          03 PLI-TURNO                PIC 9(01).

          03 PLI-FILLER.
             05 PLI-FILLER1           PIC 9(17).

       fd arqrej.
       01 arqrej-reg.
	  03 arqrej-chave.
	     05 arqrej-planilha-cega     pic 9(10).
	     05 arqrej-produto           pic 9(06).
          03 arqrej-nota-fiscal          pic x(09).
	  03 arqrej-status               pic x(01).
	  03 arqrej-status-rej           pic x(01).
	  03 arqrej-data.
	     05 arqrej-ano               pic 9(04).
	     05 arqrej-mes               pic 9(02).
	     05 arqrej-dia               pic 9(02).
          03 arqrej-qtde                 pic 9(06).
          03 arqrej-lote                 pic X(10).    
*         03 arqrej-unid-cx              pic 9(02).    
*         03 arqrej-avulsa               pic 9(06).    
          03 arqrej-tp-devolucao         pic x(01).
          03 filler                      pic x(03).
*---------------------------------------------------------------------*
* arqrej-status (D)  rejeitado (G) Liberado pelo GPP                  *
* arqrej-status-rej                                                   * 
*                L - lote                                             *
*                S - sobra                                            *
*                F - Falta                                            *
*---------------------------------------------------------------------*
*                                                                     *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*

       fd planilha01.     
       01 plc01-reg.   
          03 plc01-chave.
	     05 plc01-planilha-cega        PIC 9(10).
          03 plc01-nome-transferencia      pic x(12).
          03 plc01-nome-fornecedor         pic x(10).
	  03 plc01-usu-cobol.
	     05 plc01-sistema              pic x(04).
	     05 plc01-fracao               pic x(01).
	     05 plc01-filler-1             pic x(05).
	     05 plc01-filler-1-r redefines plc01-filler-1.
	        07 plc01-filler-2          pic x(04).
	        07 plc01-lib-nota          pic x(01).
	  03 plc01-nota                    pic X(09).
	  03 plc01-nota-r redefines plc01-nota.       
	     05 plc01-nota-1               pic x(01).
	     05 plc01-nota-2               pic x(01).
	     05 plc01-nota-3               pic x(01).
	     05 plc01-nota-6               pic x(06).
	  03 plc01-entrada-global          pic x(10).
	  03 plc01-pedsap-r redefines plc01-entrada-global.
	     05 plc01-pedsap               pic x(10).
	  03 plc01-data-geracao.
	     05 plc01-data-dia             pic 9(02).
	     05 plc01-data-mes             pic 9(02).
	     05 plc01-data-ano             pic 9(04).
	  03 plc01-flag-proces             pic X(01).
	  03 plc01-flag-enviado            pic X(01).
	  03 plc01-flag-encomenda          pic X(01).
	  03 plc01-qtde-item               pic 9(03).
	  03 plc01-data-inclusao.                    
	     05 plc01-inc-ano              pic 9(04).
	     05 plc01-inc-mes              pic 9(02).
	     05 plc01-inc-dia              pic 9(02).
          03 plc01-texto.
	     04 plc01-carro-rem            pic x(20).
	     04 plc01-carro-rem-r redefines plc01-carro-rem.
		05 plc01-codfou            pic 9(14).
		05 pc01-codfou-r redefines plc01-codfou.
		   07 plc01-remessa-1      pic x(09).
		   07 plc01-volume         pic 9(05).
		05 plc01-tipo-separacao    pic x(01).
		05 plc01-resto             pic x(05).
		05 plc01-resto-r redefines plc01-resto.
		   07 plc01-qtde-cubeta    pic 9(03).
		   07 plc01-resto-1        pic x(02).
             
	  03 plc01-data-hora.
	     05 plc01-data-enviado         pic 9(08).
	     05 plc01-data-enviado-r redefines plc01-data-enviado.
		07 plc01-dt-ano            pic 9(04).
		07 plc01-dt-mes            pic 9(02).
		07 plc01-dt-dia            pic 9(02).
	     05 plc01-hora-enviado         pic 9(06).
	     05 plc01-hora-enviado-r redefines plc01-hora-enviado.
		07 plc01-hr-hora           pic 9(02).
		07 plc01-hr-minuto         pic 9(02).
		07 plc01-hr-segundo        pic 9(02).
	  03 plc01-usuario                 pic x(09).
	  03 plc01-usuario-r redefines plc01-usuario.
	     05 plc01-hora-inclusao.
		07 plc01-hh-inclusao      pic 9(02).
		07 plc01-mm-inclusao      pic 9(02).
		07 plc01-ss-inclusao      pic 9(02).
             05 plc01-usuario-1           pic x(03).
	  03 plc01-codldr                 pic X(03).
	  03 plc01-codldr-r redefines plc01-codldr.   
	     05 plc01-cont-rej-1          pic x(01).
	     05 plc01-cont-rej-1-r redefines plc01-cont-rej-1.
		07 plc01-tipo-unificada   pic 9(01).
	     05 plc01-conf-mult           pic 9(01).
	     05 plc01-cont-rej            pic 9(01).

	  03 plc01-d000.
	     05 plc01-bloq                pic x(01).
	     05 plc01-edifou              pic X(07).
	  03 plc01-d000-r redefines plc01-d000.
	     05 plc01-ped-ano             pic x(04).
	     05 plc01-ped-mes             pic x(02).
	     05 plc01-ped-dia             pic x(02).
	  03 plc01-unif-r redefines plc01-d000-r.
	     05 plc01-plan-principal      pic 9(08).
 
* --------------------------------------------------------------- *
* plc-flag-process (L  livre / C Coletada / R Rejeitada           *
* plc-flag-enviado (N  nao enviado para sap / S  enviado para sap *
* plc01-tipo-unificada 0 - nao unificada 1 - principal unificada  *
*                                        2 - nao principal        *
* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*
*   1 - transferencia  / 2 - fornecedor.

       fd planilha02.     
       01 plc02-reg.   
          03 plc02-chave.
	     05 plc02-tipo                 pic 9(01).
	     05 plc02-planilha-cega        pic 9(10).
	     05 plc02-ean                  pic 9(13).
	     05 plc02-ean-r redefines plc02-ean.         
		07 plc02-ean-1             pic 9(05).
		07 plc02-ean-2             pic 9(08).
	     05 plc02-sequencia            pic 9(03).
             05 plc02-lote                 pic x(10).
	  03 plc02-qtde-informada          pic 9(06).
          03 plc02-dt-verificao.
	     05 plc02-dt-verificao-ano     pic 9(04).
	     05 plc02-dt-verificao-mes     pic 9(02).
	     05 plc02-dt-verificao-dia     pic 9(02).
          03 plc02-validade.
	     05 plc02-validade-mes         pic 9(02).
	     05 plc02-validade-ano         pic 9(02).
          03 plc02-codigo                  pic 9(06).
	  03 plc02-desc-produto            pic x(35). 
          03 plc02-qtde-coletada           pic 9(06).
	  03 plc02-cod-diverg              pic X(04).
	  03 plc02-desc-diverg             pic x(23).
	  03 plc02-qtde-diverg             pic 9(06). 
	  03 plc02-qtde-cx-fechada         pic 9(06). 
	  03 plc02-qtde-unid-cx-fechada    pic 9(06).
	  03 plc02-qtde-unid-avulsa        pic 9(06).
	  03 plc02-flag-enviado            pic x(01).
	  03 plc02-usuario                 pic x(10).    
	  03 plc02-tentativa               pic 9(01).    
	  03 plc02-flag-rejeicao           pic X(01).    
	  03 plc02-flag-lote               pic x(01).
	  03 plc02-flag-qtdade             pic x(01).
	  03 plc02-flag-sobra              pic x(01).
	  03 plc02-flag-nlocaliz           pic x(01).
          03 plc02-validaderj.
	     05 plc02-validade-diarj       pic x(02).
	     05 plc02-validade-mesrj       pic x(02).
	     05 plc02-validade-anorj       pic x(02).
	  03 plc02-qtde-pedida             pic 9(06).
	  03 filler                        pic x(04).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*                 "/d/dados/plan_cega1"
*

       fd planilha03.     
       01 plc03-reg.   
          03 plc03-chave.
	     05 plc03-planilha-cega        pic 9(10).
	     05 plc03-ean                  pic 9(13).
	     05 plc03-ean-r redefines plc03-ean.      
		07 plc03-ean-1             pic 9(05).
		07 plc03-ean-2             pic 9(08).
             05 plc03-lote                 pic x(10).
          03 plc03-qtde-informada          pic 9(06).
	  03 plc03-qtde-lancamento         pic 9(03).
	  03 plc03-data-inclusao.
	     05 plc03-inc-ano              pic 9(04).
	     05 plc03-inc-mes              pic 9(02).
	     05 plc03-inc-dia              pic 9(02).
	  03 plc03-flag-atualiz            pic x(01).
	  03 plc03-produto                 pic 9(06).
	  03 plc03-mes-val                 pic x(02).
	  03 plc03-ano-val                 pic x(02).
	  03 plc03-mes-val-alt             pic x(02).
	  03 plc03-ano-val-alt             pic x(02).
	  03 plc03-flag-lote               pic x(01).
	  03 plc03-flag-receb              pic x(01).
	  03 plc03-flag-prati              pic x(01).
	  03 filler                        pic x(14).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*                 "/d/dados/plan_cega1"
*

       fd planilha03u.     
       01 plc03u-reg.   
          03 plc03u-chave.
	     05 plc03u-planilha-cega        pic 9(10).
	     05 plc03u-ean                  pic 9(13).
	     05 plc03u-ean-r redefines plc03u-ean.      
		07 plc03u-ean-1             pic 9(05).
		07 plc03u-ean-2             pic 9(08).
             05 plc03u-lote                 pic x(10).
          03 plc03u-qtde-informada          pic 9(06).
	  03 plc03u-qtde-lancamento         pic 9(03).
	  03 plc03u-data-inclusao.
	     05 plc03u-inc-ano              pic 9(04).
	     05 plc03u-inc-mes              pic 9(02).
	     05 plc03u-inc-dia              pic 9(02).
	  03 plc03u-flag-atualiz            pic x(01).
	  03 plc03u-produto                 pic 9(06).
	  03 plc03u-mes-val                 pic x(02).
	  03 plc03u-ano-val                 pic x(02).
	  03 plc03u-mes-val-alt             pic x(02).
	  03 plc03u-ano-val-alt             pic x(02).
	  03 plc03u-flag-lote               pic x(01).
	  03 plc03u-flag-receb              pic x(01).
	  03 plc03u-flag-prati              pic x(01).
	  03 filler                         pic x(14).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*                 "/d/dados/plan_cega1"
*

       fd planilha05.     
       01 plc05-reg.   
          03 plc05-chave.
	     05 plc05-planilha-cega        pic 9(10).
	     05 plc05-codigo               pic 9(06).
          03 plc05-qtde-informada          pic 9(07).
	  03 plc05-flag-localiz            pic x(01).
	  03 plc05-saldo                   pic 9(07).
	  03 plc05-qtdade-palate           pic 9(02).
	  03 plc05-qtde-vol occurs 10 times.
	     05 plc05-vol                  pic 9(02).
*------> (S - ja foi unificada / N - nao foi unificada)
	  03 plc05-unificada               pic x(01).
*------> (S - que usou unificacao / espaco ainda nao usou)
	  03 plc05-flag-usou               pic x(01).
	  03 filler                        pic x(01).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*                 "/d/dados/plan_cega1"
*

       fd planilha05u.     
       01 plc05u-reg.   
          03 plc05u-chave.
	     05 plc05u-planilha-cega        pic 9(10).
	     05 plc05u-codigo               pic 9(06).
          03 plc05u-qtde-informada          pic 9(07).
	  03 plc05u-flag-localiz            pic x(01).
	  03 plc05u-saldo                   pic 9(07).
	  03 plc05u-qtdade-palate           pic 9(02).
	  03 plc05u-qtde-vol occurs 10 times.
	     05 plc05u-vol                  pic 9(02).
	  03 filler                        pic x(03).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*

       fd planilha06d.     
       01 plc06d-reg.    
          03 plc06d-chave.
	     05 plc06d-planilha-cega       pic 9(10).
             05 plc06d-produto             pic 9(06).
	  03 plc06d-colet-usuario          pic x(10).
          03 plc06d-colet-qtde             pic 9(07).
	  03 plc06d-prim-usuario           pic x(10).
          03 plc06d-prim-qtde              pic 9(07).
	  03 plc06d-segu-usuario           pic x(10).
          03 plc06d-segu-qtde              pic 9(07).
	  03 plc06d-gpp-usuario            pic x(10).
          03 plc06d-gpp-qtde               pic 9(07).
	  03 filler                        pic x(20).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*

       fd planilha06h.     
       01 plc06h-reg.   
          03 plc06h-chave.
	     05 plc06h-planilha-cega        pic 9(10).
*-------> inicial coletada  (1a Contagem)
	  03 plc06h-data-entrada.
	     05 plc06h-ano-entrada          pic 9(04).
	     05 plc06h-mes-entrada          pic 9(02).
	     05 plc06h-dia-entrada          pic 9(02).
	  03 plc06h-hora-entrada-inicial.
	     05 plc06h-hh-entr-i            pic 9(02).
	     05 plc06h-mm-entr-i            pic 9(02).
	     05 plc06h-ss-entr-i            pic 9(02).
	  03 plc06h-data-entrada-final.
	     05 plc06h-ano-entrada-f        pic 9(04).
	     05 plc06h-mes-entrada-f        pic 9(02).
	     05 plc06h-dia-entrada-f        pic 9(02).
	  03 plc06h-hora-entrada-final.   
	     05 plc06h-hh-entr-f            pic 9(02).
	     05 plc06h-mm-entr-f            pic 9(02).
	     05 plc06h-ss-entr-f            pic 9(02).


*-------> Segunda Contagem                             
	  03 plc06h-usuario-lib2            pic x(10).
	  03 plc06h-data-entrada2.
	     05 plc06h-ano-entrada2         pic 9(04).
	     05 plc06h-mes-entrada2         pic 9(02).
	     05 plc06h-dia-entrada2         pic 9(02).
	  03 plc06h-hora-entrada2-inicial.
	     05 plc06h-hh-entr2-i           pic 9(02).
	     05 plc06h-mm-entr2-i           pic 9(02).
	     05 plc06h-ss-entr2-i           pic 9(02).
	  03 plc06h-data-entrada2-final.
	     05 plc06h-ano-entrada2-f       pic 9(04).
	     05 plc06h-mes-entrada2-f       pic 9(02).
	     05 plc06h-dia-entrada2-f       pic 9(02).
	  03 plc06h-hora-entrada2-final.   
	     05 plc06h-hh-entr2-f           pic 9(02).
	     05 plc06h-mm-entr2-f           pic 9(02).
	     05 plc06h-ss-entr2-f           pic 9(02).

*-------> liberacao para ser coletada
	  03 plc06h-usuario-lib             pic x(10).
	  03 plc06h-data-lib.     
	     05 plc06h-ano-lib              pic 9(04).
	     05 plc06h-mes-lib              pic 9(02).
	     05 plc06h-dia-lib              pic 9(02).
	  03 plc06h-hora-lib.                 
	     05 plc06h-hh-lib               pic 9(02).
	     05 plc06h-mm-lib               pic 9(02).
	     05 plc06h-ss-lib               pic 9(02).

*-------> liberacao conferencia por gdd. (3a Contagem)
	  03 plc06h-usuario-gpp             pic x(10).
	  03 plc06h-data-gpp.     
	     05 plc06h-ano-gpp              pic 9(04).
	     05 plc06h-mes-gpp              pic 9(02).
	     05 plc06h-dia-gpp              pic 9(02).
	  03 plc06h-hora-gpp.                 
	     05 plc06h-hh-gpp               pic 9(02).
	     05 plc06h-mm-gpp               pic 9(02).
	     05 plc06h-ss-gpp               pic 9(02).

	  03 plc06h-data-gpp-f.     
	     05 plc06h-ano-gpp-f             pic 9(04).
	     05 plc06h-mes-gpp-f             pic 9(02).
	     05 plc06h-dia-gpp-f             pic 9(02).
	  03 plc06h-hora-gpp-f.                 
	     05 plc06h-hh-gpp-f              pic 9(02).
	     05 plc06h-mm-gpp-f              pic 9(02).
	     05 plc06h-ss-gpp-f              pic 9(02).

	  03 filler                         pic x(18).
 

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega lote .           
*

       fd planilha06l.     
       01 plc06l-reg.    
          03 plc06l-chave.
	     05 plc06l-planilha-cega       pic 9(10).
             05 plc06l-produto             pic 9(06).
	     05 plc06l-qtde-lanc           pic 9(02).
  	     05 plc06l-lote                pic x(10).
	  03 plc06l-colet-usuario          pic x(10).
          03 plc06l-colet-qtde-nf          pic 9(07).
          03 plc06l-colet-qtde             pic 9(07).
	  03 plc06l-lote-colet             pic x(10).
	  03 plc06l-prim-usuario           pic x(10).
          03 plc06l-prim-qtde              pic 9(07).
	  03 plc06l-lote-prim              pic x(10).
	  03 plc06l-segu-usuario           pic x(10).
          03 plc06l-segu-qtde              pic 9(07).
	  03 plc06l-lote-segun             pic x(10).
	  03 plc06l-gpp-usuario            pic x(10).
          03 plc06l-gpp-qtde               pic 9(07).
	  03 plc06l-gpp-lote               pic x(10).
	  03 filler                        pic x(20).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*                 "/d/dados/plan_cega1"
*

       fd planilha13.     
       01 plc13-reg.   
          03 plc13-chave.
	     05 plc13-planilha-cega        pic 9(10).
	     05 plc13-ean                  pic 9(13).
          03 plc13-lote                    pic x(10).
	  03 plc13-mes-val                 pic x(02).
	  03 plc13-ano-val                 pic x(02).
	  03 filler                        pic x(16).

* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planilha cega.           
*                 "/d/dados/plan_cega1"
*

       fd planilha15.     
       01 plc15-reg.   
          03 plc15-chave.
	     05 plc15-planilha-cega        pic 9(10).
	     05 plc15-codigo               pic 9(06).
	  03 plc15-qtdade-palate           pic 9(03).
	  03 plc15-qtde-vol occurs 40 times.
	     05 plc15-vol                  pic 9(03).
          03 plc15-fracao                  pic 9(03).
	  03 filler                        pic x(20).

* --------------------------------------------------------------- *

       fd planlib.
       01 planlib-reg.    
	  03 planlib-chave.
	     05 planlib-planilha-cega     pic 9(10).
          03 planlib-nota-fiscal          pic x(09).
	  03 planlib-arq                  pic x(18).
	  03 planlib-statu-lib            pic x(01).
	  03 planlib-data.
	     05 planlib-ano               pic 9(04).
	     05 planlib-mes               pic 9(02).
	     05 planlib-dia               pic 9(02).
 	  03 planlib-data-lib.
 	     05 planlib-ano-lib           pic 9(04).
 	     05 planlib-mes-lib           pic 9(02).
 	     05 planlib-dia-lib           pic 9(02).
 	  03 planlib-hora-lib.
 	     05 planlib-hh-lib            pic 9(02).
 	     05 planlib-mm-lib            pic 9(02).
 	     05 planlib-ss-lib            pic 9(02).
          03 planlib-usuario              pic x(10).
	  03 planlib-tipo-docto           pic x(01).
          03 filler                       pic x(10).
*-----------------------------------------------------------------------*
* planlib-statu-lib                                                     *
* A - Armazenado no estoque                                             *
*   - Ainda nao estoque                                                 *
*-----------------------------------------------------------------------*

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Planvol - quantidade de volume na planilha cega
*

       fd planvol.        
       01 plv01-reg.   
          03 plv01-chave.
	     05 plv01-planilha-cega        PIC 9(10).
	  03 plv01-data-inclusao.                    
	     05 plv01-inc-ano              pic 9(04).
	     05 plv01-inc-mes              pic 9(02).
	     05 plv01-inc-dia              pic 9(02).
          03 plv01-qtde-volume             pic 9(05). 
          03 plv01-ult-volume              pic 9(05). 
	  03 plv01-prim-volume             pic 9(05).
	  03 plv01-filler                  pic 9(13).
* --------------------------------------------------------------- *

*   
*   Sistema.....: Coletor 
*   Arquivo.....: Plunifica01 _ Controle de planilha cega Unificada
*

       fd plunifica01.    
       01 plun01-reg.   
          03 plun01-chave.
	     05 plun01-plan-principal      PIC 9(10).
	     05 plun01-plan-cega           PIC 9(10).
          03 plun01-codigo                 pic 9(06). 
	  03 plun01-flag-proces            pic x(01).
	  03 plun01-nota                   pic x(10).
	  03 plun01-filler                 pic x(40).
* --------------------------------------------------------------- *

      *----------------------------------------------------------------*
      *            Cadastro de Classificacao de Produtos               *
      *  OBS.: Toda vez que alterar o prodclas-aux.cpy                 *
      *----------------------------------------------------------------*
       FD PRODCLAS.
       01 PC-REGISTRO.
          02 PC-CHAVE.
             03 PC-PRODUTO        PIC 9(006).
             03 PC-EST-ORIGEM     PIC X(002).
             03 PC-EST-DESTINO    PIC X(002).
          02 PC-ICM-INT           PIC 9(002)V99.
          02 PC-COD-SUBST         PIC 9(002).
          02 PC-DIVISAO           PIC 9(001).
             88 PC-MEDICAMENTO    VALUE 0.
             88 PC-PERFUMARIA     VALUE 1.
          02 PC-CLASSIF           PIC X(001).
             88 PC-MONITORADO     VALUE 'M'.
             88 PC-LIBERADO       VALUE 'L'.
          02 PC-ALTERA            PIC 9(001).
          02 PC-BLOQUEIO          PIC 9(001).
	  02 PC-PRECOVENDA        PIC 9(011)V99.
*-------->02 PC-FILLER            PIC X(007).
          02 PC-PRECOMAXIMO       PIC 9(005)V99.
      *----------------------------------------------------------------*
      *                                                                *
      * Dicionario de Dados                                            *
      *                                                                *
      * PC-PRODUTO        = Codigo do Produto                          *
      * PC-EST-ORIGEM     = Estado Origem do Produto                   *
      * PC-EST-DESTINO    = Estado Destino do Produto                  *
      * PC-ICM-INT        = Valor do ICM Interno                       *
      * PC-COD-SUBST      = Codigo de Substituicao                     *
      * PC-DIVISAO        = Medicamento ou Perfumaria                  *
      * PC-CLASSIF        = Liberado ou Monitorado                     *
      * PC-ALTERA         = 1 Incl/alte, enviar call center            *
      * PC-BLOQUEIO       = ?????                                      *
      * PC-PRECOVENDA     = Preco de Venda do Produto                  *
      * PC-PRECOMAXIMO    =>Preco maximo ao Consumidor                 *
      *----------------------------------------------------------------*


        fd prodestB.

        01 prodestB-reg.

           03  prodestB-chave.
               05 prodestB-produto         pic 9(06).

           03  prodestB-qtde-max-corp      pic 9(05).

	   03  prodestB-filler             pic 9(18).
		  
	   03  prodestB-log-inclusao.
	       05 prodestB-data-hora-inc.
	          07 prodestB-data-inc.
		     09 prodestB-ano-inc   pic 9(04).
		     09 prodestB-mes-inc   pic 9(02).
		     09 prodestB-dia-inc   pic 9(02).

	          07 prodestB-hora-inc.
		     09 prodestB-hor-inc   pic 9(02).
		     09 prodestB-min-inc   pic 9(02).
		     09 prodestB-seg-inc   pic 9(02).

                  07 prodestB-programa-inc pic x(10).
                  07 prodestB-usuario-inc  pic x(10).
                  07 prodestB-login-inc    pic x(10).
	    
	   03  prodestB-log-alteracao.
	       05 prodestB-data-hora-alt.
	          07 prodestB-data-alt.
		     09 prodestB-ano-alt   pic 9(04).
		     09 prodestB-mes-alt   pic 9(02).
		     09 prodestB-dia-alt   pic 9(02).

	          07 prodestB-hora-alt.
		     09 prodestB-hor-alt   pic 9(02).
		     09 prodestB-min-alt   pic 9(02).
		     09 prodestB-seg-alt   pic 9(02).

                  07 prodestB-programa-alt pic x(10).
                  07 prodestB-usuario-alt  pic x(10).
                  07 prodestB-login-alt    pic x(10).
	    
              

      *----------------------------------------------------------------*
      *                   Projeto SD x WMS                             *
      *                                                                *
      *  Objetivo: Guardar o saldo do produto em Z5 no SAP             *
      *                                                                *
      *                                                                *
      *  Programador:      Adilson                                     *
      *  Area de Producao: filial:/d/dados/produtZ5                    *
      *  Area de backup:   ?                                           *
      *  Eh povoado pelo:  filial:/d/exec/fncwms13.int (funcao)        *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*

       fd produtZ5.
       01 prdZ5-reg.
	  03 prdZ5-chave.
	     05 prdZ5-produto      pic 9(06).
          03 prdZ5-qtde            pic 9(07).
	  03 prdZ5-filler          pic 9(18).

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
      *----------------------------------------------------------------*
      *                     Arquivo de Programas                       *
      *                                                                *
      * Em: 01/10/96 - Marcos                                          *
      * Revisao em 04/04/97 - Marcos                                   *
      * Alternate: PRG-CHAMADA, PRG-NOME-REAL                          *
      *                                                                *
      *----------------------------------------------------------------*
       FD PROGS.
       01 PRG-REGISTRO.
          03 PRG-CHAVE.
	     05 PRG-NOME      PIC X(10).
          03 PRG-CHAMADA.
	     05 PRG-SISTEMA   PIC 9(02).
	     05 PRG-GRUPO     PIC 9(02).
	     05 PRG-NROPC     PIC 9(02).
	  03 PRG-PROGRAMA     PIC 9(04).
          03 PRG-NOME-REAL    PIC X(10).
	  03 PRG-CONTROLE.
             05 PRG-PATH      PIC X(20).
	     05 PRG-DEV-IMPR  PIC X(08).
	     05 PRG-FLAG      PIC 9(01).
	     05 PRG-PGM-ANT   PIC X(10).
	     05 PRG-REEXEC    PIC X(01).
	     05 PRG-NVEZES    PIC 9(02).
	  03 PRG-CPCRON.
             05 PRG-CRON      PIC 9(01).
             05 PRG-HORINI    PIC 9(04).
	     05 PRG-HORINIX REDEFINES PRG-HORINI.
		07 PRG-HHINI  PIC 9(02).
		07 PRG-MMINI  PIC 9(02).
             05 PRG-HORFIM    PIC 9(04).
	     05 PRG-HORFIMX REDEFINES PRG-HORFIM.
		07 PRG-HHFIM  PIC 9(02).
		07 PRG-MMFIM  PIC 9(02).
             05 PRG-HORITV    PIC 9(04).
	     05 PRG-HORITVX REDEFINES PRG-HORITV.
		07 PRG-HHITV  PIC 9(02).
		07 PRG-MMITV  PIC 9(02).
	     05 PRG-SEMANA.
	        07 PRG-SEG    PIC X(01).
	        07 PRG-TER    PIC X(01).
	        07 PRG-QUA    PIC X(01).
	        07 PRG-QUI    PIC X(01).
	        07 PRG-SEX    PIC X(01).
	        07 PRG-SAB    PIC X(01).
	        07 PRG-DOM    PIC X(01).
          03 PRG-CADASTRO.
	     05 PRG-DSCOPC    PIC X(30).
	     05 PRG-VERSAO.
                07 PRG-VERSNR PIC 9(02).
	        07 PRG-VERSEQ PIC 9(02).
	     05 PRG-DT-ULTAL  PIC 9(08).
	     05 PRG-DT-ULTALX REDEFINES PRG-DT-ULTAL.
		07 PRG-ANAL   PIC 9(04).
		07 PRG-MEAL   PIC 9(02).
		07 PRG-DIAL   PIC 9(02).
	     05 PRG-DT-ULTUT  PIC 9(08).
	     05 PRG-DT-ULTUTX REDEFINES PRG-DT-ULTUT.
		07 PRG-ANUT   PIC 9(04).
		07 PRG-MEUT   PIC 9(02).
		07 PRG-DIUT   PIC 9(02).
	     05 PRG-HR-ULTUT  PIC 9(06).
	     05 PRG-HR-ULTUTX REDEFINES PRG-HR-ULTUT.
		07 PRG-HRUT   PIC 9(02).
		07 PRG-MNUT   PIC 9(02).
		07 PRG-SGUT   PIC 9(02).
	     05 PRG-FORM      PIC X(01).
	     05 PRG-FRPL      PIC X(01).
	     05 PRG-VIAS      PIC 9(01).
	     05 PRG-TIPO      PIC X(01).
	     05 PRG-DESTINO.
	        07 PRG-DEST1  PIC X(02).
	        07 PRG-DEST2  PIC X(02).
	        07 PRG-DEST3  PIC X(02).
          03 PRG-MENU.
	     05 PRG-NVMENU    PIC X(01).
	     05 PRG-SISMEN    PIC 9(02).
	     05 PRG-GRPMEN    PIC 9(02).
	     05 PRG-OPCMEN    PIC 9(02).
          03 PRG-PARAMETRO    PIC X(03).
          03 PRG-FILLER       PIC X(33).
      *----------------------------------------------------------------*
      *  OBS: 
      *      NOME      - Nome do Programa.
      *      SISTEMA   - Numero do Sistema Integrante.
      *                  - 01 Faturamento.
      *                  - 02 Livro Fiscal.
      *      GRUPO     - Grupo dentro do sistema.
      *      NROPC     - Numero da opcao dentro do menu.
      *      PROGRAMA  - Numero do Programa.
      *      NOME-REAL - Nome do programa a ser chamado.
      *                  - Quando for igual a espacos o programa.
      *                    chamado sera o do campo nome.
      *      PATH      - Localizacao do programa.
      *      DEV-IMPR  - Device de Impressao.
      *                  - quando #?? indica numero para subimp.
      *                  - quando tty??? indica device fisico.
      *      FLAG      - Indicador de utilizacao.
      *                  - 0 Nao esta sendo usado.
      *                  - 1 Esta sendo usado.
      *      PGM-ANT   - Marca Programa a ser executado antes deste.
      *      REEXEC    - Indica permissao de reemissao (S/N).
      *      NVEZES    - Numero de vezes que foi executado.
      *      CRON      - Flag de alteracao dos parametros.
      *                  - 0 Normal.
      *                  - 1 Regerar o CRON.
      *      HORINI    - Hora de inicio da sequencia de execucao.
      *      HORFIM    - Hora do termino da sequencia de execucao.
      *      HORITV    - Intervalo de execucao de quantas em quantas
      *                  hh horas e mm minutos o programa sera executado.
      *      SEG       - Se = 'S' este programa sera executado nas
      *                  segundas e se 'N' nao sera.
      *      TER       - Se = 'S' este programa sera executado nas
      *                  tercas   e se 'N' nao sera.
      *      QUA       - Se = 'S' este programa sera executado nas
      *                  quartas  e se 'N' nao sera.
      *      QUI       - Se = 'S' este programa sera executado nas
      *                  quintas  e se 'N' nao sera.
      *      SEX       - Se = 'S' este programa sera executado nas
      *                  sextas   e se 'N' nao sera.
      *      SAB       - Se = 'S' este programa sera executado nas
      *                  sabados  e se 'N' nao sera.
      *      DOM       - Se = 'S' este programa sera executado nas
      *                  domingos e se 'N' nao sera.
      *      DSOPC     - Descricao do programa.
      *      VERSNR    - Numero da versao.
      *      VERSEQ    - Sequancia da Versao.
      *      DT-ULTAL  - Data da ultima alteracao (AAAAMMDD).
      *      DT-ULTUT  - Data da ultima utilizacao (AAAAMMDD).
      *      HR-ULTUT  - Hora da ultima utilizacao (HHMMSS).
      *      FORM      - Tipo de Formulario.
      *                  - G 132 colunas.
      *                  - P 80  colunas.
      *      FRPL      - Tipo de Formulario.
      *                  - P Pautado.
      *                  - L Liso.
      *      VIAS      - Quantidade de vias no formulario.
      *      TIPO      - Tipo de Compressao.
      *                  - N Normal.
      *                  - C Comprimido.
      *      DEST1     - Destino do Formulario.
      *                  - CP -> Compras.
      *                  - CR -> Controladoria.
      *                  - CS -> Custo.
      *                  - CT -> Contabilidade.
      *                  - DR -> Diretoria.
      *                  - DS -> Desenvolvimento
      *                  - ES -> Estoque.
      *                  - FA -> Faturamento.
      *                  - FI -> Fiscal.
      *                  - FN -> Financeiro.
      *                  - IF -> Informatica.
      *                  - LG -> Logistica.
      *                  - MK -> Marketing.
      *                  - OP -> Operacional.
      *                  - RH -> Recursos Humanos.
      *                  - SA -> SAC.
      *                  - SG -> Seguranca.
      *                  - TV -> Televendas.
      *                  - TZ -> Tezouraria.
      *                  - VD -> Vendas.
      *      DEST2     - Idem a DEST1.
      *      DEST3     - Idem a DEST1.
      *      FILLER  - Campo reservado.
      *
      *----------------------------------------------------------------*
      *----------------------------------------------------------------*
      * Arquivo : Protocolo de devolucao                               *
      * Objetivo: Manter informacoes dos protocolos de devolucao emiti-*
      *           dos para impressao no Itinerario                     *
      *----------------------------------------------------------------*
      * 16/06/2015 - Inclusao do campo protodev-excesso  e retirada de *
      *              1 byte do campo protodev-nota.            Jorge   *
      *----------------------------------------------------------------*
       FD protodev.
       01 protodev-reg.  
          03 protodev-chave.
	     05 protodev-rota            pic 9(04).
	     05 protodev-cliente         pic 9(06).
	     05 protodev-protocolo       pic 9(10).
	  03 protodev-chave-alt.
	     05 protodev-proto-a         pic 9(10). 
	  03 protodev-excesso            pic x(01).
	  03 protodev-nota               pic 9(08).
	  03 protodev-pedwms             pic 9(05).
	  03 protodev-data-aviso.
	     05 protodev-anoavi          pic 9(04).
	     05 protodev-mesavi          pic 9(02).
	     05 protodev-diaavi          pic 9(02).
	  03 protodev-carro              pic 9(05).
	  03 protodev-flag-emi           pic x(01).
	  03 protodev-data-emissao.
	     05 protodev-ano-emis        pic 9(04).
	     05 protodev-mes-emis        pic 9(02).
	     05 protodev-dia-emis        pic 9(02).
	  03 protodev-codcancel          pic 9(02).
      *----------------------------------------------------------------*
      * protodev-flag-emi: E - Impresso no itinerario                  *
      *                    C - Cancelado                               *
      *                    R - Recolhido                               *
      *----------------------------------------------------------------*
      * protodev-excesso:  B - Balanceamento de excesso                *
      *----------------------------------------------------------------*


      *----------------------------------------------------------------*
      * Arquivo : /d/dados/qtdpedcli.                                  *
      * Objetivo: Cadastrar a quantidade de pedidos efetivados no dia  *
      *           para o cliente.                                      *
      *             Se cliente, nos ultimos 30 dias tiver 4 dias ou    *
      *           mais com mais de 1 pedido, ele sera' unificado no    *
      *           esp101 pelo preenchimento do campo QPC-UNIFICADO='S'.*
      *                                                                *
      * 18/08/2014                                              Jorge  *
      *----------------------------------------------------------------*

       FD  QTDPEDCLI.
       01  QPC-REGISTRO.
	   03 QPC-CHAVE.
	      05 QPC-DATA        PIC 9(08).       *> c5datafat-ant
	      05 QPC-DATA-RE REDEFINES QPC-DATA.
	         07 QPC-ANO      PIC 9(04).
	         07 QPC-MES      PIC 9(02).
	         07 QPC-DIA      PIC 9(02).
              05 QPC-RC          PIC X(01). 
	      05 QPC-CODIGO      PIC 9(09).       *> Cliente

           03 QPC-QTDE           PIC 9(06).       *> Qtde pedidos validos no dia
           03 QPC-UNIFICADO      PIC X(01).       *> 'S' ou ' '.



      *|---|---------------------------|-------------------------------|
      *            Projeto Eliminar Espelho A4 por etiqueta.          *
      *                                                               *
      * Objetivo ...: Armazenar intervalo de caixas validas.          *
      * Sistema ....: WMS                                             *
      * Logistica ..: Gustavo Pires.                                  *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 06/Abr/2022                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

       fd  regcaixa.
       01  rgcx-reg.
	   03 rgcx-sequencia           pic 9(04).

	   03 rgcx-tipo                pic x(01). *> E=esteira C=cliente
	   03 rgcx-caixaInicio         pic 9(10).
	   03 rgcx-caixaFinal          pic 9(10).

	   03 rgcx-logInclusao.
              05 rgcx-usuario          pic x(10).
              05 rgcx-login            pic x(10).
	      05 rgcx-dataHora.
		 07 rgcx-data.
		    09 rgcx-ano        pic 9(04).
		    09 rgcx-mes        pic 9(02).
		    09 rgcx-dia        pic 9(02).
                 07 rgcx-hora.      
		    09 rgcx-hor        pic 9(02).
		    09 rgcx-min        pic 9(02).
		    09 rgcx-seg        pic 9(02).

      *----------------------------------------------------------------*
      * Arquivo : Tabela de Relacionamento                             *
      * Objetivo: Alterar mensagens do PE                              * 
      *                                                                *
      *----------------------------------------------------------------*
       FD  relacmsg.
       01  rlcmsg-registro.
	   03 rlcmsg-chave.
	      05 rlcmsg-cod-msg    PIC 9(03).
	      05 rlcmsg-chave-alt.
	         07 rlcmsg-cod-fixo pic 9(04).
	   03 rlcmsg-motivo        PIC x(78).
	   03 rlcmsg-data-inc      pic 9(08).
	   03 rlcmsg-hora-inc      pic 9(06).
	   03 rlcmsg-usuario-inc   pic x(10).
	   03 rlcmsg-data-alt      pic 9(08).
	   03 rlcmsg-hora-alt      pic 9(06).
	   03 rlcmsg-usuario-alt   pic x(10).
           03 filler               PIC x(18).     
       FD RETENCAO.
       01 RET-REGISTRO.
          03 RET-CHAVE.
	     05 RET-CODRET     PIC 9(02).
          03 RET-DESCRICAO     PIC X(20).
          03 RET-BLQCOD        PIC X(01).
          03 RET-ALQRET        PIC 9(01)V9999.
	  03 RET-FILLER        PIC X(20).

       FD RETsap.    
       01 RETsap-REGISTRO.
          03 RETsap-CHAVE.
             05 RETsap-ALQRET        PIC 9(01)V9999.
	  03 RETsap-CODRET           PIC 9(02).
          03 RETsap-DESCRICAO        PIC X(20).
          03 RETsap-BLQCOD           PIC X(01).
	  03 RETsap-FILLER           PIC X(20).

      *----------------------------------------------------------------*
      * 13/12/2018 - Alteracao do campo ROT-NUMEROS de 9(04) para x(04)*
      *                                                      Jorge     *
      *----------------------------------------------------------------*
      *                     Arquivo de Rotas                           *
      * Em: 08/10/96 - Marcos                                          *
      * Em: 02/04/97 - Incluido ROT-VIAGEM    por Marcos.              *
      * Em: 23/04/03 - Incluido ROT-PLACA     por Otavio.              *
      * Em: 06/01/05 - Incluido ROT-VLFRETE   por Adilson              *
      * Em: 19/06/17 - Incluido ROT-TP        por Jorge.               *
      * Em: 11/08/20 - Incluido ROT-DOCFINDER por Jorge.               *
      * Em: 30/08/21 - Incluido ROT-DUPLEX    por Adilson.             *
      * Em: 29/09/21 - Incluido ROT-HORA-PROD por Adilson.             *
      * Em: 08/02/22 - Incluido ROT-RESUMO    por MARCO.               *
      * Em: 02/02/23 - Incluido ROT-tipo O    por MARCO.               *
      *----------------------------------------------------------------*
       FD ROTA.
       01 ROT-REGISTRO.
          03 ROT-CHAVE.
             05 ROT-ROTA          PIC 9(03).
             05 ROT-TURNO         PIC 9(01).
	  03 ROT-RECONF           PIC X(01).
          03 ROT-TAMPCUB          PIC X(01).
	  03 ROT-BLOQUEADO        PIC X(01).
          03 ROT-VIAGEM           PIC X(01).
	  03 ROT-DESCRICAO        PIC X(32).
	  03 ROT-DADOS            PIC X(64).
	  03 ROT-DADOSROTA REDEFINES ROT-DADOS.
	     05 ROT-PRIORIDADE    PIC 9(02).
	     05 ROT-RAMPA         PIC 9(02).
	     05 ROT-ENT-REP       PIC X(01).
             05 ROT-TP            PIC 9(02). 
	     05 ROT-DOCFINDER     PIC X(01).
	     05 ROT-DUPLEX        PIC X(01).
	     05 ROT-RESUMO        PIC X(01).
	     05 ROT-tipo          PIC X(01).
             05 ROT-FILLER1       PIC X(53).
	  03 ROT-TURNOS REDEFINES ROT-DADOS.
             05 ROT-HORA.
	        07 ROT-HOR        PIC 9(02).
	        07 ROT-MIN        PIC 9(02).
	        07 ROT-SEG        PIC 9(02).
	     05 ROT-DATASAI       PIC X(01).
	     05 ROT-DATAPZ        PIC X(01).
	     05 ROT-FECHAENTREGA.
	        07 ROT-EXPEDIDOR  PIC X(01).
	        07 ROT-VLMIN      PIC 9(08)V99.
	        07 ROT-VLMAX      PIC 9(08)V99.
	        07 ROT-ENTMIN     PIC 9(03).
	        07 ROT-ENTMAX     PIC 9(03).
	        07 ROT-VOLMIN     PIC 9(03).
	        07 ROT-VOLMAX     PIC 9(03).
                07 ROT-PLACA.
                   09 ROT-LETRAS  PIC X(03).
                   09 ROT-NUMEROS PIC X(04).
	        07 ROT-VLFRETE    PIC 9(06)V99.
	     05 ROT-HORA-PROD.
		07 ROT-HH-PROD    PIC 9(02).
		07 ROT-MM-PROD    PIC 9(02).
	     05 ROT-FILLER2       PIC X(04).
      *----------------------------------------------------------------*
      * ROT-DATASAI    Qual data do arquivo de parametros sera usada 
      *       como data de saida.
      *
      * ROT-DATAPZ     Qual data do arquivo de parqmetros sera usada    
      *       como data de calculo de prazo.
      *
      * Valores aceitos para ROT-DATASAI e ROT-DATAPZ; 1 ou 2 ou 3.
      * ROT-DOCFINDER: "S" ou "N" (Se envia a minuta para o site da 
      *                Docfinder ou nao).  (Fica no ROT-TURNO = 0)
      *----------------------------------------------------------------*
      * ROT-DATASAI    Qual data do arquivo de parametros sera usada 
      *       como data de saida.
      *
      * ROT-DATAPZ     Qual data do arquivo de parqmetros sera usada    
      *       como data de calculo de prazo.
      *
      * Valores aceitos para ROT-DATASAI e ROT-DATAPZ; 1 ou 2 ou 3.
      * ROT-DOCFINDER: "S" ou "N" (Se envia a minuta para o site da 
      *                Docfinder ou nao).  (Fica no ROT-TURNO = 0)
      *----------------------------------------------------------------*

      *----------------------------------------------------------------*
      *                     Arquivo  ROTASTP                           *
      * 16/06/2017 - Jorge                                             *
      *----------------------------------------------------------------*
       FD ROTASTP.
       01 RTP-REG.
          03 RTP-CHAVE.
             05 RTP-TP            PIC 9(02).
	  03 RTP-DESCR            PIC X(40).
	  03 RTP-FILLER           PIC X(10).
*----------------------------------------------------------------------*
* 07/10/2022 Aumento ocorrencias de 5 para 6 times (inclusao do Sabado)*
*                                                            Jorge     *      
*----------------------------------------------------------------------*
      
      *----------------------------------------------------------------*
      *                     Arquivo  ROTASTR                           *
      * 04/07/2017 - Jorge                                             *
      * Obs.: A manutencao desta tabela e' feita pelo programa rotas.  *
      *----------------------------------------------------------------*
	   FD ROTASTR.
	   01 RTT-REGISTRO.
	      03 RTT-CHAVE.
		 05 RTT-ROTA          PIC 9(03).
		 05 RTT-TURNO         PIC 9(01).
	      03 RTT-CNPJ             PIC 9(14).      
	      03 RTT-SLA              OCCURS 6 TIMES.
	         05 RTT-SLAD          PIC 9(01).
	         05 RTT-SLAH.
		    07 RTT-SLAH-HOR   PIC 9(02).
		    07 RTT-SLAH-MIN   PIC 9(02).
	      03 RTT-FILLER           PIC X(10).


*-> RTT-CNPJ : (Se RTT-TURNO = 0)
*-> RTT-SLA OCCURS 5 TIMES: 1-Segunda, 2-Terca, 3-Quarta, 4-Quinta, 5-Sexta
*-->                                                                6-Sabado


       FD SALDOPEND.
       01  REG-SALDOPEND.
	   03  SLDP-CHAVE.
	       05 SLDP-PRODUTO          PIC 9(06).
	       05 SLDP-DATA             PIC 9(08).
	       05 SLDP-MOTIVO           PIC 9(02).
           03  SLDP-QTDE                PIC 9(07).
           03  SLDP-FILLER              PIC 9(18).

      *----------------------------------------------------------------*
      *                   Projeto SD x WMS                             *
      *                                                                *
      *  Objetivo: guardar o saldo da Rua Z estoque (WMS).             *
      *                                                                *
      *                                                                *
      *  Programador:      Otavio                                      *
      *  Area de Producao: filial:/d/dados/saldwmsz                    *
      *  Area de backup:   ?                                           *
      *  Eh povoado pelo:  filial:/d/exec/fncwms13.int (funcao)        *
      *                                                                *
      *                                                                *
      *----------------------------------------------------------------*

       fd saldwmsz.
       01 slz-reg.
	  03 slz-chave.
	     05 slz-produto        pic 9(06).
          03 slz-saldo-ruaZ        pic 9(11).

	  03 slz-filler            pic 9(18).

*
*   Sistema.....: Separacao e conferencia por setor 
*   Arquivo.....: Cadastro de Funcao                  
*                 fisico "/d/dados/scfuncao"            
*   Analista....: Otavio/Sergio      
*   Logistica...: Abel
*   Data Inicio.: 26/12/2005
*

       FD SCFUNCAO.
       01 scsn-REG.
          03 scsn-CHAVE.
             05 scsn-FILIAL          PIC 9(02).
             05 scsn-CODIGO          PIC 9(03).

          03 scsn-descricao          pic x(40).
          03 scsn-situacao           pic x(01).

          03 scsn-FILLER.
             05 scsn-FILLER1         PIC 9(18).
             05 scsn-FILLER2         PIC 9(18).

          03 scsn-LOG.
             05 scsn-INCLUSAO.
                07 scsn-DATA-INC     PIC 9(08).
                07 scsn-HORA-INC     PIC 9(06).
                07 scsn-USR-INC      PIC X(10).
             05 scsn-ALTERACAO.
                07 scsn-DATA-ALT     PIC 9(08).
                07 scsn-HORA-ALT     PIC 9(06).
                07 scsn-USR-ALT      PIC X(10).

         


*
*   Sistema.....: Separacao e conferencia por setor 
*   Arquivo.....: Configuracao do sistema.            
*                 fisico "/d/dados/scsconfg"            
*   Analista....: Otavio/Sergio      
*   Logistica...: Abel
*   Data Inicio.: 22/12/2005
*
*   Inclusao de 2 campos: estouro do coletor e estouro do espelho(tarja
* preta).                                         Otavio 27/06/06
*
*   inclusao de 2 campos: scsg-qtde-lote-nf =>qtde maxima de lotes que que o  
* coletor vai aceitar.             
*                       : scsg-corrige-lote => corrige lote S/N
*                                                 Otavio 29/03/07


       FD SCSCONFG.
       01 scsg-REG.
          03 scsg-CHAVE.
             05 scsg-FILIAL          PIC 9(02).
             05 scsg-CODIGO          PIC 9(06).

          03 scsg-acerta-fifo        pic x(01).
          03 scsg-bloq-sep-conf      pic x(01).
          03 scsg-acerta-falta-nf    pic x(01).

          03 scsg-estouro-coletor    pic 9(03).
          03 scsg-tarja-pr-espelho   pic 9(03).

	  03 scsg-qtde-lote-nf       pic 9(02).
	  03 scsg-corrige-lote       pic x(01).

          03 scsg-FILLER.
             05 scsg-FILLER1         PIC 9(09).
             05 scsg-FILLER2         PIC 9(18).

          03 scsg-LOG.
             05 scsg-INCLUSAO.
                07 scsg-DATA-INC     PIC 9(08).
                07 scsg-HORA-INC     PIC 9(06).
                07 scsg-USR-INC      PIC X(10).
             05 scsg-ALTERACAO.
                07 scsg-DATA-ALT     PIC 9(08).
                07 scsg-HORA-ALT     PIC 9(06).
                07 scsg-USR-ALT      PIC X(10).

         


      *|---|---------------------------|-------------------------------|
      *            Projeto LEAN - Picking Conferencia de Caixa        *
      *                                                               *
      * Objetivo ...: Cadastro das redes e/ou clientes para conferen- *
      *               cia de caixa e lacre.                           *
      * Sistema ....: WMS                                             *
      * Logistica ..: Gustavo Pires.                                  *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 29/Jan/2020                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

       fd  scscxcli.
       01  scsc-reg.
	   03 scsc-chave.
	      05 scsc-tpReg            pic x(01). *>R=rede, C=cliente
              05 scsc-codigo           pic 9(06).
	      05 filler redefines scsc-codigo.
		 07 scsc-fixZero       pic 9(01).
		 07 scsc-codRede       pic 9(05).
	      05 filler redefines scsc-codigo.
		 07 scsc-codCliente    pic 9(06).

           03 scsc-ativo               pic x(01). *>Sim/Nao
 
	   03 scsc-logInclusao.
	      05 scsc-AnoInc           pic 9(04).
	      05 scsc-MesInc           pic 9(02).
	      05 scsc-lgczSequenciaInc pic 9(06).
              
	   03 scsc-logAlteracao.
	      05 scsc-AnoAlt           pic 9(04).
	      05 scsc-MesAlt           pic 9(02).
	      05 scsc-lgczSequenciaAlt pic 9(06).
              
      *|---|---------------------------|-------------------------------|
      *            Projeto LEAN - Picking Conferencia de Caixa        *
      *                                                               *
      * Objetivo ...: Cadastro das estacoes liberadas para conferencia*
      *               de caixa e lacre.                               *
      * Sistema ....: WMS                                             *
      * Logistica ..: Gustavo Pires.                                  *
      * Gerente ....:                                                 *
      * Programador.: Otavio                                          *
      * Data .......: 19/Nov/2019                                     *
      *                                                               *
      *|---|---------------------------|-------------------------------|

       fd  scscxemb.
       01  scsx-reg.
	   03 scsx-chave.
	      05 scsx-estacao          pic 9(02). *>61, 62, 64,...

           03 scsx-ativo               pic x(01). *>Sim/Nao
 
	   03 scsx-logInclusao.
	      05 scsx-AnoInc           pic 9(04).
	      05 scsx-MesInc           pic 9(02).
	      05 scsx-lgczSequenciaInc pic 9(06).
              
	   03 scsx-logAlteracao.
	      05 scsx-AnoAlt           pic 9(04).
	      05 scsx-MesAlt           pic 9(02).
	      05 scsx-lgczSequenciaAlt pic 9(06).
              
*
*   Sistema.....: Separacao e conferencia por setor 
*   Arquivo.....: Cadastro de Funcionarios           
*                 fisico "/d/dados/scsfunci"            
*   Analista....: Otavio/Sergio      
*   Logistica...: Abel
*   Data Inicio.: 22/12/2005
*

       FD SCSFUNCI.
       01 scsf-REG.
          03 scsf-CHAVE.
             05 scsf-FILIAL          PIC 9(02).
             05 scsf-COD-MATR        PIC 9(06).

          03 scsf-nome               pic x(40).
          03 scsf-cod-funcao         pic 9(03).
          03 scsf-cod-tipo           pic x(01).
          03 scsf-turno              pic x(01).
          03 scsf-senha              pic x(06).
          03 scsf-situacao           pic x(01).
          03 scsf-cod-matr-cf        PIC 9(06).

	  03 scsf-coringa            pic x(01).

          03 scsf-FILLER.
             05 scsf-FILLER1         PIC 9(17).
             05 scsf-FILLER2         PIC 9(18).

          03 scsf-LOG.
             05 scsf-INCLUSAO.
                07 scsf-DATA-INC     PIC 9(08).
                07 scsf-HORA-INC     PIC 9(06).
                07 scsf-USR-INC      PIC X(10).
             05 scsf-ALTERACAO.
                07 scsf-DATA-ALT     PIC 9(08).
                07 scsf-HORA-ALT     PIC 9(06).
                07 scsf-USR-ALT      PIC X(10).



*
*   Sistema.....: Separacao e conferencia por setor 
*   Arquivo.....: Entidade que faz o relacionamento Funcionario x Libera Setor
*                 fisico "/d/dados/scsfunst"   
*   Analista....: Otavio/Sergio      
*   Logistica...: Abel
*   Data Inicio.: 13/04/2006
*

       FD SCSFUNST.
       01 scss-REG.
          03 scss-CHAVE.
             05 scss-FILIAL          PIC 9(02).
	     05 scss-COD-MATR        pic 9(06).
             05 scss-ESTACAO         PIC 9(02).
             05 scss-SETOR           PIC 9(03).
             05 scss-MODULO          PIC X(01).

          03 scss-FILLER.
             05 scss-FILLER1         PIC 9(18).

          03 scss-LOG.
             05 scss-INCLUSAO.
                07 scss-DATA-INC     PIC 9(08).
                07 scss-HORA-INC     PIC 9(06).
                07 scss-USR-INC      PIC X(10).

*
*   Sistema.....: Separacao e conferencia por setor 
*   Arquivo.....: Cadastro de bloqueio por setor         
*                 fisico "/d/dados/scsblset"            
*   Analista....: Otavio/Sergio      
*   Logistica...: Abel
*   Data Inicio.: 16/02/2006
*

       FD SCSLBSET.
       01 scsb-REG.
          03 scsb-CHAVE.
             05 scsb-FILIAL          PIC 9(02).
             05 scsb-ESTACAO         PIC 9(02).
             05 scsb-SETOR           PIC 9(03).
             05 scsb-MODULO          PIC X(01).

          03 scsb-situacao           pic x(01).

          03 scsb-FILLER.
             05 scsb-FILLER1         PIC 9(18).

          03 scsb-LOG.
             05 scsb-INCLUSAO.
                07 scsb-DATA-INC     PIC 9(08).
                07 scsb-HORA-INC     PIC 9(06).
                07 scsb-USR-INC      PIC X(10).
             05 scsb-ALTERACAO.
                07 scsb-DATA-ALT     PIC 9(08).
                07 scsb-HORA-ALT     PIC 9(06).
                07 scsb-USR-ALT      PIC X(10).

         


      *-----------------------------------------------------------*
      *          Cadastro de subsetor do cliente                  *
      *-----------------------------------------------------------*
       FD SUBSETOR. 
       01 SUBSETOR-REG. 
	  03 SUBSETOR-CHAVE.   
	     05 SUB-CODIGO   PIC X(03).
          03 SUB-DESCR       PIC X(30).
	  03 SUB-CATEG-GRP   PIC 9(02).
	  03 SUB-SUPERVISOR  PIC X(05). 
	  03 SUB-DATA-ALT.
	     05 SUB-ANO-ALT  PIC 9(04).
	     05 SUB-MES-ALT  PIC 9(02).
	     05 SUB-DIA-ALT  PIC 9(02).
	  03 SUB-FILLER      PIC X(10).
      *--------------------------------------------------------------*
      *       Arquivo de Cliente SupplierCard - Selecionado          *
      *--------------------------------------------------------------*
       FD SUPCARD00c.
       01 reg-sc00.
          03 sc00-chave.
             05 sc00-codigo                   pic 9(0006).
	  03 sc00-cartao.
	     05 sc00-cartao-1                 pic 9(0004). 
	     05 sc00-cartao-2                 pic 9(0004). 
	     05 sc00-cartao-3                 pic 9(0004). 
	     05 sc00-cartao-4                 pic 9(0004). 
          03 sc00-dt-inclusao.
	     05 sc00-dti-ano                  pic 9(0004).
	     05 sc00-dti-mes                  pic 9(0002).
	     05 sc00-dti-dia                  pic 9(0002).
	  03 sc00-situacao                    pic x(0001).
	  03 sc00-dt-alteracao.
	     05 sc00-dta-ano                  pic 9(0004).
	     05 sc00-dta-mes                  pic 9(0002).
	     05 sc00-dta-dia                  pic 9(0002).
	  03 sc00-id-usuario                  pic x(0010).
          03 sc00-flag-envio                  pic x(0001).   
	  03 filler                           pic 9(0010). 

      *------------------------------------------------------------------*
      *  campo                           descricao                       *
      *                                                                  *
      *  sc00-codigo                     codigo do cliente Profarma      *
      *  sc00-cartao                     numero do cartao suppliercard   *
      *  sc00-dt-inclusao                data inclusao do cleinte no car-*
      *					 tao                             *
      *  sc00-situacao(A/I)              situacao do cliente ativo ou ina*
      *                                  tivo                            *
      *  sc00-dt-alteracao               data alteracao do cartao        *
      *  sc00-id-usuario                 nome do usuario alteracao       *
      *  sc00-flag-envio                 indica que o registro ja foi en-*
      *                                  viado para suppliercard         *
      *------------------------------------------------------------------*
      *--------------------------------------------------------------*
      *       Arquivo de alteracao cadastral Supcard04               *
      *                                                              *
      *--------------------------------------------------------------*
       FD SUPCARD04C.   
       01 reg-sc04. 
          03 sc04-chave.
             05 sc04-codigo                   pic 9(006).
          03 sc04-data-envio.
	     05 sc04-dt-eaa                   pic 9(004).
	     05 sc04-dt-emm                   pic 9(002).
	     05 sc04-dt-edd                   pic 9(002).
          03 sc04-flag-envio                  pic x(001).
          03 filler                           pic x(020).
      *--------------------------------------------------------------*

      *--------------------------------------------------------------*
      *       Arquivo de Cliente alteracao de limite                 *
      *--------------------------------------------------------------*
       FD SUPCARD11.
       01 reg-sc11.
          03 sc11-chave.
             05 sc11-codigo-cliente           pic 9(0006).
             05 sc11-codigo-rede              pic 9(0005).
          03 sc11-situacao                    pic x(0001).
          03 filler                           pic x(0010).

      *------------------------------------------------------------------*
      *  campo                           descricao                       *
      *                                                                  *
      *  sc11-codigo                     codigo do cliente Profarma      *
      *  sc11-situacao                   A-alteracao de limite / N - nao *
      *                                  houve alteracao de limite       *
      *------------------------------------------------------------------*
      *
       fd tabALTusu.
       01 tabALTus-registro.
          03 tabALTus-chave.
 	     05 tabus-data-atualizacao.                
                 07 tabaltus-ano-atua    pic 9(04).
                 07 tabaltus-mes-atua    pic 9(02).
                 07 tabaltus-dia-atua    pic 9(02).
             05 tabaltus-usuario         pic x(10).
 	  03 filler                      pic x(30).

      *
       FD TABUSU.
       01 TABUS-REGISTRO.
          03 TABUS-CHAVE.
             05 TABUS-USUARIO       PIC X(10).
 	  03 TABUS-hora-acesso.
             05 tabus-HH-acesso     pic 9(02).
             05 tabus-MM-acesso     pic 9(02).
             05 tabus-SS-acesso     pic 9(02).
 	  03 tabus-data-acesso.                     
             05 tabus-ano-acesso    pic 9(04).
             05 tabus-mes-acesso    pic 9(02).
             05 tabus-dia-acesso    pic 9(02).
 	  03 FILLER                 PIC X(30).

      *----------------------------------------------------------------*
      * Arquivo : Tabela de mensagem                                   *
      * Objetivo: Alterar as mensagens do PE                           * 
      *                                                                *
      *----------------------------------------------------------------*
       FD  tabelmsg.    
       01  tblmsg-registro.
	   03 tblmsg-chave.
	      05 tblmsg-cod-msg    PIC 9(03).
	   03 tblmsg-desc-msg3     PIC x(30).
	   03 tblmsg-desc-msg2     PIC x(20).
	   03 tblmsg-desc-msg1     PIC x(10).
	   03 tblmsg-desc-msg      PIC x(05).
	   03 tblmsg-cod-ped       PIC 9(03).
	   03 tblmsg-data-inc      pic 9(08).
	   03 tblmsg-hora-inc      pic 9(06).
	   03 tblmsg-usuario-inc   pic x(10).
	   03 tblmsg-data-alt      pic 9(08).
	   03 tblmsg-hora-alt      pic 9(06).
	   03 tblmsg-usuario-alt   pic x(10).
           03 FILLER               PIC x(18).     


      *----------------------------------------------------------------*
      * Arquivo : Impressora de cupon bematech (setor)                 *
      * Objetivo: Imprimir atraves do setor do produto                 *
      *                                                                *
      *----------------------------------------------------------------*
       fd tabimpsetor.
       01 tabimpsetor-reg.
          03 tabimpsetor-chave.
             05 tabimpsetor-estacao    pic 9(02).
          03 tabimpsetor-imp-01        pic x(02).
          03 tabimpsetor-inicial-01    pic 9(03).
          03 tabimpsetor-final-01      pic 9(03).
          03 tabimpsetor-imp-02        pic x(02).
          03 tabimpsetor-inicial-02    pic 9(03).
          03 tabimpsetor-final-02      pic 9(03).
          03 tabimpsetor-imp-03        pic x(02).
          03 tabimpsetor-inicial-03    pic 9(03).
          03 tabimpsetor-final-03      pic 9(03).
          03 tabimpsetor-imp-04        pic x(02).
          03 tabimpsetor-inicial-04    pic 9(03).
          03 tabimpsetor-final-04      pic 9(03).
          03 tabimpsetor-inclusao.             
	     05 tabimpsetor-data-i.
                07 tabimp-setor-aa-i   pic 9(04).
                07 tabimp-setor-mm-i   pic 9(02).
                07 tabimp-setor-dd-i   pic 9(02).
          03 tabimpsetor-alteracao.             
	     05 tabimpsetor-data-a.
                07 tabimp-setor-aa-a  pic 9(04).
                07 tabimp-setor-mm-a  pic 9(02).
                07 tabimp-setor-dd-a  pic 9(02).
	  03 tabimpsetor-usuario      pic x(10).
	  03 tabimpsetor-status       pic x(01).
          03 filler                   pic X(20).
      *----------------------------------------------------------------*
      * Arquivo : Lote Casa vindo do SAP                               *
      * Objetivo: Manter Informacoes dos lote de produto na Profarma   *
      *                                                                *
      * Abreviatura tab - tabela                                       *
      *             l   - lote                                         *
      *             C   - casa                                         *
      * Tamanho     42                                                 *
      *----------------------------------------------------------------*
       FD TABLC.       
       01 TABLC-REG.          
          03 TABLC-CHAVE.
	     05 TABLC-PRODUTO       PIC 9(06).
	     05 TABLC-LOTE          PIC X(10).
          03 TABlC-DATA-VALIDADE.
	     05 TABLC-AA            PIC 9(04).
	     05 TABLC-MM            PIC 9(02).
	     05 TABLC-DD            PIC 9(02).
          03 TABLC-FILLER            PIC X(20).
*----------------------------------------------------------------------*
*     tabreimp-tipo I -itinerario                                      *
*----------------------------------------------------------------------*

       fd tabreimp.    
       01 tabreimp-reg.
	  03 tabreimp-chave.
             05 tabreimp-codigo      PIC 9(02).
          03 tabreimp-descricao      PIC x(30).
          03 tabreimp-tipo           PIC x(01). *> (E - espelho / T - termica) 
          03 tabreimp-cadastramento.                
	     05 tabreimp-ano         PIC 9(04).
	     05 tabreimp-mes         PIC 9(02).
	     05 tabreimp-dia         PIC 9(02).
	  03 FILLER                  PIC X(20).
      *----------------------------------------------------------------*
      *                 Arquivo de Tipo de Cliente                     *
      *                                                                *
      * Neste arquivo sao registradas as condicoes iniciais que cada   *
      * cliente deve assumir, de acordo com o grupo de cliente a que   *
      * pertence, se deseja pedido a vista ou a prazo e se o mesmo e ' *
      * um pedido de medicamento ou de perfumaria.    18/03/96 Rosane  *
      *----------------------------------------------------------------*
       FD TIPOCLI.
       01 TC-REGISTRO.
          03 TC-CHAVE.
             05 TC-TIPOCLI    PIC 9(02).
          03 TC-DESCRICAO     PIC X(30).
          03 TC-CONDICOES     OCCURS 4 TIMES.
             05 TC-VISTAM     PIC 9(02).
             05 TC-VISTAP     PIC 9(02).
             05 TC-PRAZOM     PIC 9(02).
             05 TC-PRAZOP     PIC 9(02).
      *----------------------------------------------------------------*
      * Programas que utilizam : TELEVEND                              *
      *----------------------------------------------------------------*

       fd arq-totvs.
       01 reg-totvs.      
	  03 chave-01.
	     05 arq-usuario                pic x(10).
          03 arq-nome                      pic x(40).
	  03 arq-txt-status                pic x(20).
	  03 arq-txt-dt-adm.                        
	      05 arq-txt-adm-dd            pic 9(02).
	      05 arq-txt-bar-01            pic x(01).
	      05 arq-txt-adm-mm            pic 9(02).
	      05 arq-txt-bar-02            pic x(01).
	      05 arq-txt-adm-aa            pic 9(04).
	  03 arq-txt-dt-dem.                        
	      05 arq-txt-dem-dd            pic 9(02).
	      05 arq-txt-bar-03            pic x(01).
	      05 arq-txt-dem-mm            pic 9(02).
	      05 arq-txt-bar-04            pic x(01).
	      05 arq-txt-dem-aa            pic 9(04).
          03  arq-txt-setor                pic x(20).

      *
       FD USUARIOSn.
       01 US-REGISTROn.
          03 US-CHAVEn.
             05 US-USUARIOn       PIC X(10).
             05 US-CHAVE-PROGRAMASn.
                07 US-SISTEMAn    PIC 9(02).
                07 US-GRUPOn      PIC 9(02).
	        07 US-NROPC1n     PIC 9(02).
	        07 US-NROPC2n     PIC 9(02).
	        07 US-NROPC3n     PIC 9(02).
	        07 US-NROPC4n     PIC 9(02).
	        07 US-NROPC5n     PIC 9(02).
	        07 US-NROPC6n     PIC 9(02).
	  03 US-NIVELn            PIC 9(01).
          03 US-SENHAn            PIC X(10).
          03 US-PERMISSAO-MENUn REDEFINES US-SENHAn PIC X(10).
	  03 US-DATA-In           PIC 9(08).
	  03 US-VALIXn REDEFINES US-DATA-In.
	     05 US-ANOIn          PIC 9(04).
	     05 US-MESIn          PIC 9(02).
	     05 US-DIAIn          PIC 9(02).
	  03 US-DATA-Fn           PIC 9(08).
	  03 US-VALFXn REDEFINES US-DATA-Fn.
	     05 US-ANOFn          PIC 9(04).
	     05 US-MESFn          PIC 9(02).
	     05 US-DIAFn          PIC 9(02).
      *
       FD USUARIOS.
       01 US-REGISTRO.
          03 US-CHAVE.
             05 US-USUARIO       PIC X(10).
             05 US-CHAVE-PROGRAMAS.
                07 US-SISTEMA    PIC 9(02).
                07 US-GRUPO      PIC 9(02).
	        07 US-NROPC1     PIC 9(02).
	        07 US-NROPC2     PIC 9(02).
	        07 US-NROPC3     PIC 9(02).
	        07 US-NROPC4     PIC 9(02).
	        07 US-NROPC5     PIC 9(02).
	        07 US-NROPC6     PIC 9(02).
	  03 US-NIVEL            PIC 9(01).
          03 US-SENHA            PIC X(10).
          03 US-PERMISSAO-MENU REDEFINES US-SENHA PIC X(10).
	  03 US-DATA-I           PIC 9(08).
	  03 US-VALIX REDEFINES US-DATA-I.
	     05 US-ANOI          PIC 9(04).
	     05 US-MESI          PIC 9(02).
	     05 US-DIAI          PIC 9(02).
	  03 US-DATA-F           PIC 9(08).
	  03 US-VALFX REDEFINES US-DATA-F.
	     05 US-ANOF          PIC 9(04).
	     05 US-MESF          PIC 9(02).
	     05 US-DIAF          PIC 9(02).
      *--------------------------------------------------------------------*
      * Historico de vendas por clientes dos ultimes 12 meses, mais o mes  *
      * corrente. Obs. cada mes esta na sua correspontente ocorrencia ex.  *
      * mes 09 ocorrencia 09, a ocorrencia 13 corresponte ao mes corrente  *
      * Programador : Luis Otavio - Analista : Rosane - 11/10/95.          *
      *--------------------------------------------------------------------*
       FD  VENDAS.
       01  VD-REGISTRO.
           03 VD-CHAVE.
              05 VD-CLIENTE         PIC 9(06).
           03 VD-VALOR-P            PIC 9(11)V99 OCCURS 13 TIMES.
           03 VD-VALOR-M            PIC 9(11)V99 OCCURS 13 TIMES.

      *------------------------------------------------------------------*
      * Cadastro de Vendedor Ativo                                       *
      *------------------------------------------------------------------*

        FD VNDATIVO.      
        01 VNDA-REGISTRO.
           03  VNDA-CHAVE.
               05  VNDA-CLIENTE        PIC 9(06).  
           03  VNDA-OPERADORA          PIC X(02).
301112     03  VNDA-HORARIO            PIC X(05).
           03  VNDA-FILLER             PIC 9(13).


*   
*   Sistema.....: Devolucao ( Header )
*   Arquivo.....: xcdev01
*

       fd xcdev01.     
       01 xcd01-reg.   
          03 xcd01-chave.
	     05 xcd01-planilha-dev         pic 9(10).
          03 xcd01-nome-transferencia      pic x(12).
          03 xcd01-nome-fornecedor         pic x(10).
	  03 xcd01-filler-1                pic x(13).
	  03 xcd01-nota                    pic X(06).
	  03 xcd01-entrada-global          pic x(10).
	  03 xcd01-data-geracao.
	     05 xcd01-data-dia             pic 9(02).
	     05 xcd01-data-mes             pic 9(02).
	     05 xcd01-data-ano             pic 9(04).
	  03 xcd01-flag-proces             pic X(01).
	  03 xcd01-flag-enviado            pic X(01).
	  03 xcd01-qtde-item               pic 9(04).
	  03 xcd01-data-inclusao.                    
	     05 xcd01-inc-ano              pic 9(04).
	     05 xcd01-inc-mes              pic 9(02).
	     05 xcd01-inc-dia              pic 9(02).
          03 xcd01-texto.
	     04 xcd01-carro-rem            pic x(20).
	  03 xcd01-data-hora.
	     05 xcd01-data-enviado         pic 9(08).
	     05 xcd01-data-enviado-r redefines xcd01-data-enviado.
		07 xcd01-dt-ano            pic 9(04).
		07 xcd01-dt-mes            pic 9(02).
		07 xcd01-dt-dia            pic 9(02).
	     05 xcd01-hora-enviado         pic 9(06).
	     05 xcd01-hora-enviado-r redefines xcd01-hora-enviado.
		07 xcd01-hr-hora           pic 9(02).
		07 xcd01-hr-minuto         pic 9(02).
		07 xcd01-hr-segundo        pic 9(02).
          03 xcd01-volume                  pic 9(06).
	  03 xcd01-tipo-devolucao          pic x(10).
	  03 xcd01-data-pedido.
	     05 xcd01-ano-ped              pic x(04).
	     05 xcd01-mes-ped              pic x(02).
	     05 xcd01-dia-ped              pic x(02).
	  03 xcd01-flag-lote               pic x(01).
	  03 filler                        pic x(11).

 
* -------------------------------------------------------------------- *
* xcd01-flag-proces  (L  livre / C conferida / R lote nao passou casa) *
* xcd01-flag-enviado (N  nao enviado para sap / S  enviado para sap    *
* -------------------------------------------------------------------- *

*   
*   Sistema.....: Devolucao ( Detalhe )
*   Arquivo.....: xcdev02.
*

       fd xcdev02.     
       01 xcd02-reg.   
          03 xcd02-chave.
	     05 xcd02-tipo                 pic 9(01).
	     05 xcd02-planilha-dev         pic 9(10).
	     05 xcd02-ean                  pic 9(13).
	     05 xcd02-ean-r redefines xcd02-ean.         
		07 xcd02-ean-1             pic 9(05).
		07 xcd02-ean-2             pic 9(08).
	     05 filler                     pic x(03).
             05 xcd02-lote                 pic x(10).
	  03 xcd02-qtde-informada          pic 9(06).
          03 xcd02-dt-verificao.
	     05 xcd02-dt-verificao-ano     pic 9(04).
	     05 xcd02-dt-verificao-mes     pic 9(02).
	     05 xcd02-dt-verificao-dia     pic 9(02).
          03 xcd02-validade.
	     05 xcd02-validade-mes         pic 9(02).
	     05 xcd02-validade-ano         pic 9(02).
          03 xcd02-codigo                  pic 9(06).
	  03 xcd02-desc-produto            pic x(35). 
          03 xcd02-qtde-coletada           pic 9(06).
	  03 xcd02-cod-diverg              pic X(04).
	  03 xcd02-desc-diverg             pic x(23).
	  03 xcd02-qtde-diverg             pic 9(06). 
	  03 xcd02-qtde-cx-fechada         pic 9(06). 
	  03 xcd02-qtde-unid-cx-fechada    pic 9(06).
	  03 xcd02-qtde-unid-avulsa        pic 9(06).
	  03 xcd02-flag-enviado            pic x(01).
	  03 xcd02-usuario                 pic x(10).    
	  03 xcd02-tentativa               pic 9(01).    
	  03 xcd02-flag-rejeicao           pic X(01).    
	  03 xcd02-flag-lote               pic x(01).
	  03 xcd02-flag-qtdade             pic x(01).
	  03 xcd02-flag-sobra              pic x(01).
	  03 xcd02-flag-nlocaliz           pic x(01).
	  03 filler                        pic x(20).

      * --------------------------------------------------------------- *

        fd txt.
        01 txt-reg pic x(080).
       WORKING-STORAGE SECTION.
      *---------------------------------------------------------------*
       77 ws-status pic x(02) value spaces.
       77 w-e pic x(80) value spaces.
      *---------------------------------------------------------------*
       SCREEN SECTION.

      *---------------------------------------------------------------*
       PROCEDURE DIVISION.
      *---------------------------------------------------------------*
      *---------------------------------------------------------------*

      *---------------------------------------------------------------*
       INICIO.
      *---------------------------------------------------------------*
        open output txt.
        open input alvara-esp
        if ws-status <> '00'
           move spaces to w-e
           string 'alvara-esp ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input arqcusto
        if ws-status <> '00'
           move spaces to w-e
           string 'arqcusto ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input arq-fant
        if ws-status <> '00'
           move spaces to w-e
           string 'arq-fant ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input arqhorta
        if ws-status <> '00'
           move spaces to w-e
           string 'arqhorta ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input arqmsgn
        if ws-status <> '00'
           move spaces to w-e
           string 'arqmsgn ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input arqpesq
        if ws-status <> '00'
           move spaces to w-e
           string 'arqpesq ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input arqsap
        if ws-status <> '00'
           move spaces to w-e
           string 'arqsap ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input balance
        if ws-status <> '00'
           move spaces to w-e
           string 'balance ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input banco
        if ws-status <> '00'
           move spaces to w-e
           string 'banco ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input bloqm001
        if ws-status <> '00'
           move spaces to w-e
           string 'bloqm001 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input blqgrupo
        if ws-status <> '00'
           move spaces to w-e
           string 'blqgrupo ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input blqprod
        if ws-status <> '00'
           move spaces to w-e
           string 'blqprod ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input blqzona
        if ws-status <> '00'
           move spaces to w-e
           string 'blqzona ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input boavi
        if ws-status <> '00'
           move spaces to w-e
           string 'boavi ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input bo
        if ws-status <> '00'
           move spaces to w-e
           string 'bo ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadbanco
        if ws-status <> '00'
           move spaces to w-e
           string 'cadbanco ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadcaixa
        if ws-status <> '00'
           move spaces to w-e
           string 'cadcaixa ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input caddocas
        if ws-status <> '00'
           move spaces to w-e
           string 'caddocas ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadfunci
        if ws-status <> '00'
           move spaces to w-e
           string 'cadfunci ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadgen2
        if ws-status <> '00'
           move spaces to w-e
           string 'cadgen2 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadgen
        if ws-status <> '00'
           move spaces to w-e
           string 'cadgen ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadprodol
        if ws-status <> '00'
           move spaces to w-e
           string 'cadprodol ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadresid
        if ws-status <> '00'
           move spaces to w-e
           string 'cadresid ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadstk281
        if ws-status <> '00'
           move spaces to w-e
           string 'cadstk281 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadusuarios
        if ws-status <> '00'
           move spaces to w-e
           string 'cadusuarios ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cadvar
        if ws-status <> '00'
           move spaces to w-e
           string 'cadvar ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input categ-grp
        if ws-status <> '00'
           move spaces to w-e
           string 'categ-grp ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input categoria
        if ws-status <> '00'
           move spaces to w-e
           string 'categoria ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cdaltlot
        if ws-status <> '00'
           move spaces to w-e
           string 'cdaltlot ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cdclired
        if ws-status <> '00'
           move spaces to w-e
           string 'cdclired ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input chavenfe
        if ws-status <> '00'
           move spaces to w-e
           string 'chavenfe ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input chendlin
        if ws-status <> '00'
           move spaces to w-e
           string 'chendlin ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cidadeUF
        if ws-status <> '00'
           move spaces to w-e
           string 'cidadeUF ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input classif
        if ws-status <> '00'
           move spaces to w-e
           string 'classif ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input clicaixa
        if ws-status <> '00'
           move spaces to w-e
           string 'clicaixa ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input clidpara
        if ws-status <> '00'
           move spaces to w-e
           string 'clidpara ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input clienteclf
        if ws-status <> '00'
           move spaces to w-e
           string 'clienteclf ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input condfaixa
        if ws-status <> '00'
           move spaces to w-e
           string 'condfaixa ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input condgrade
        if ws-status <> '00'
           move spaces to w-e
           string 'condgrade ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input condtpcli
        if ws-status <> '00'
           move spaces to w-e
           string 'condtpcli ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input condvdpar
        if ws-status <> '00'
           move spaces to w-e
           string 'condvdpar ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confclie
        if ws-status <> '00'
           move spaces to w-e
           string 'confclie ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confclired
        if ws-status <> '00'
           move spaces to w-e
           string 'confclired ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confende
        if ws-status <> '00'
           move spaces to w-e
           string 'confende ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confends
        if ws-status <> '00'
           move spaces to w-e
           string 'confends ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confinteli
        if ws-status <> '00'
           move spaces to w-e
           string 'confinteli ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confprod
        if ws-status <> '00'
           move spaces to w-e
           string 'confprod ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confrota
        if ws-status <> '00'
           move spaces to w-e
           string 'confrota ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input confZero
        if ws-status <> '00'
           move spaces to w-e
           string 'confZero ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input contacor
        if ws-status <> '00'
           move spaces to w-e
           string 'contacor ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input contrcarro
        if ws-status <> '00'
           move spaces to w-e
           string 'contrcarro ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input cubetas
        if ws-status <> '00'
           move spaces to w-e
           string 'cubetas ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input descnf
        if ws-status <> '00'
           move spaces to w-e
           string 'descnf ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input difbbs
        if ws-status <> '00'
           move spaces to w-e
           string 'difbbs ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input dschiscancel
        if ws-status <> '00'
           move spaces to w-e
           string 'dschiscancel ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input eanmult
        if ws-status <> '00'
           move spaces to w-e
           string 'eanmult ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input endentrg
        if ws-status <> '00'
           move spaces to w-e
           string 'endentrg ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input etiqprofor
        if ws-status <> '00'
           move spaces to w-e
           string 'etiqprofor ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input excecao
        if ws-status <> '00'
           move spaces to w-e
           string 'excecao ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input excmsgn
        if ws-status <> '00'
           move spaces to w-e
           string 'excmsgn ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input excresid
        if ws-status <> '00'
           move spaces to w-e
           string 'excresid ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input excvalid
        if ws-status <> '00'
           move spaces to w-e
           string 'excvalid ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input fastrack
        if ws-status <> '00'
           move spaces to w-e
           string 'fastrack ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input fat-fer
        if ws-status <> '00'
           move spaces to w-e
           string 'fat-fer ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input geogrpar
        if ws-status <> '00'
           move spaces to w-e
           string 'geogrpar ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input grupofor
        if ws-status <> '00'
           move spaces to w-e
           string 'grupofor ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input grupotv
        if ws-status <> '00'
           move spaces to w-e
           string 'grupotv ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input hiscanal
        if ws-status <> '00'
           move spaces to w-e
           string 'hiscanal ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input hisprotdev
        if ws-status <> '00'
           move spaces to w-e
           string 'hisprotdev ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input ictlnumg
        if ws-status <> '00'
           move spaces to w-e
           string 'ictlnumg ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input idocped
        if ws-status <> '00'
           move spaces to w-e
           string 'idocped ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input intsap
        if ws-status <> '00'
           move spaces to w-e
           string 'intsap ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input invnumcon
        if ws-status <> '00'
           move spaces to w-e
           string 'invnumcon ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input linhinvp
        if ws-status <> '00'
           move spaces to w-e
           string 'linhinvp ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input lotevezn
        if ws-status <> '00'
           move spaces to w-e
           string 'lotevezn ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input matricul
        if ws-status <> '00'
           move spaces to w-e
           string 'matricul ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input metaprio
        if ws-status <> '00'
           move spaces to w-e
           string 'metaprio ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input modfec
        if ws-status <> '00'
           move spaces to w-e
           string 'modfec ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input motcanmin
        if ws-status <> '00'
           move spaces to w-e
           string 'motcanmin ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input nfentrada
        if ws-status <> '00'
           move spaces to w-e
           string 'nfentrada ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input nomefant
        if ws-status <> '00'
           move spaces to w-e
           string 'nomefant ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input notapt
        if ws-status <> '00'
           move spaces to w-e
           string 'notapt ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input notlot
        if ws-status <> '00'
           move spaces to w-e
           string 'notlot ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input numpedol
        if ws-status <> '00'
           move spaces to w-e
           string 'numpedol ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input olcodcli
        if ws-status <> '00'
           move spaces to w-e
           string 'olcodcli ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input olprojeto
        if ws-status <> '00'
           move spaces to w-e
           string 'olprojeto ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input olprovedor
        if ws-status <> '00'
           move spaces to w-e
           string 'olprovedor ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input operadora
        if ws-status <> '00'
           move spaces to w-e
           string 'operadora ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input paleprod
        if ws-status <> '00'
           move spaces to w-e
           string 'paleprod ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pdf1
        if ws-status <> '00'
           move spaces to w-e
           string 'pdf1 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pednfsap
        if ws-status <> '00'
           move spaces to w-e
           string 'pednfsap ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input peem
        if ws-status <> '00'
           move spaces to w-e
           string 'peem ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc11
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc11 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc12c
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc12c ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc2
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc2 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc2s1
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc2s1 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc3a
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc3a ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc3
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc3 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc3sap
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc3sap ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc4g
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc4g ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc4
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc4 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc4rep
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc4rep ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc4s
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc4s ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc5
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc5 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfc7
        if ws-status <> '00'
           move spaces to w-e
           string 'pfc7 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfd4n
        if ws-status <> '00'
           move spaces to w-e
           string 'pfd4n ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pffecham
        if ws-status <> '00'
           move spaces to w-e
           string 'pffecham ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input pfm15
        if ws-status <> '00'
           move spaces to w-e
           string 'pfm15 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input placaiti
        if ws-status <> '00'
           move spaces to w-e
           string 'placaiti ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha01
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha01 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha02
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha02 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha03
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha03 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha03u
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha03u ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha05
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha05 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha05u
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha05u ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha06d
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha06d ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha06h
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha06h ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha06l
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha06l ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha13
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha13 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planilha15
        if ws-status <> '00'
           move spaces to w-e
           string 'planilha15 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planlib
        if ws-status <> '00'
           move spaces to w-e
           string 'planlib ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input planvol
        if ws-status <> '00'
           move spaces to w-e
           string 'planvol ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input plunifica01
        if ws-status <> '00'
           move spaces to w-e
           string 'plunifica01 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input prodclas
        if ws-status <> '00'
           move spaces to w-e
           string 'prodclas ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input prodestB
        if ws-status <> '00'
           move spaces to w-e
           string 'prodestB ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input produtZ5
        if ws-status <> '00'
           move spaces to w-e
           string 'produtZ5 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input programas
        if ws-status <> '00'
           move spaces to w-e
           string 'programas ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input progs
        if ws-status <> '00'
           move spaces to w-e
           string 'progs ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input protodev
        if ws-status <> '00'
           move spaces to w-e
           string 'protodev ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input qtdpedcli
        if ws-status <> '00'
           move spaces to w-e
           string 'qtdpedcli ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input regcaixa
        if ws-status <> '00'
           move spaces to w-e
           string 'regcaixa ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input relacmsg
        if ws-status <> '00'
           move spaces to w-e
           string 'relacmsg ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input retencao
        if ws-status <> '00'
           move spaces to w-e
           string 'retencao ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input rotastp
        if ws-status <> '00'
           move spaces to w-e
           string 'rotastp ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input rotastr
        if ws-status <> '00'
           move spaces to w-e
           string 'rotastr ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input saldopend
        if ws-status <> '00'
           move spaces to w-e
           string 'saldopend ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input saldwmsz
        if ws-status <> '00'
           move spaces to w-e
           string 'saldwmsz ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scfuncao
        if ws-status <> '00'
           move spaces to w-e
           string 'scfuncao ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scsconfg
        if ws-status <> '00'
           move spaces to w-e
           string 'scsconfg ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scscxcli
        if ws-status <> '00'
           move spaces to w-e
           string 'scscxcli ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scscxemb
        if ws-status <> '00'
           move spaces to w-e
           string 'scscxemb ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scsfunci
        if ws-status <> '00'
           move spaces to w-e
           string 'scsfunci ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scsfunst
        if ws-status <> '00'
           move spaces to w-e
           string 'scsfunst ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input scslbset
        if ws-status <> '00'
           move spaces to w-e
           string 'scslbset ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input subsetor
        if ws-status <> '00'
           move spaces to w-e
           string 'subsetor ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input supcard00c
        if ws-status <> '00'
           move spaces to w-e
           string 'supcard00c ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input supcard04c
        if ws-status <> '00'
           move spaces to w-e
           string 'supcard04c ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input supcard11
        if ws-status <> '00'
           move spaces to w-e
           string 'supcard11 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input tabaltusu
        if ws-status <> '00'
           move spaces to w-e
           string 'tabaltusu ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input tabelmsg
        if ws-status <> '00'
           move spaces to w-e
           string 'tabelmsg ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input tabimpsetor
        if ws-status <> '00'
           move spaces to w-e
           string 'tabimpsetor ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input tabreimp
        if ws-status <> '00'
           move spaces to w-e
           string 'tabreimp ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input tipocli
        if ws-status <> '00'
           move spaces to w-e
           string 'tipocli ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input usuarios
        if ws-status <> '00'
           move spaces to w-e
           string 'usuarios ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input vendas
        if ws-status <> '00'
           move spaces to w-e
           string 'vendas ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input vndativo
        if ws-status <> '00'
           move spaces to w-e
           string 'vndativo ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input xcdev01
        if ws-status <> '00'
           move spaces to w-e
           string 'xcdev01 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        open input xcdev02
        if ws-status <> '00'
           move spaces to w-e
           string 'xcdev02 ' ws-status into w-e
           write txt-reg from w-e
        end-if 
        stop run.
