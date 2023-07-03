#![](imgs/profarma_distribuicao.png#only-light){ align=left width="70"} ![](imgs/profarma_distribuicao-w.png#only-dark){ align=left width="70"}
## Configuração do ambiente COBOL
## 1. Instalação COBOL
   >Ferramenta instalada via pacote [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/setup_visualcobol_devhub_8.0_patchupdate05_318651_suse_x64 "download") no diretório:  
   >/opt/microfocus/VisualCOBOL/


## 2. Configuração de variáveis de ambiente
   >* Criado bash script "/etc/profile.d/mf.sh" [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/mf.sh "download")  
   ``` title="SCRIPT"
   --8<-- 'downloads/mf.sh'
   ```
   > O script serve para carregar as variáveis necessárias para execução do sistema COBOL.   
   > A execução do mesmo é feita toda vez que um usuário fizer login no ambiente Suse Linux  
   >==Variáveis:==  
   >  
   ><style type="text/css">
   >.tg  {border-collapse:collapse;border-spacing:0;}
   >.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
   >  overflow:hidden;padding:10px 5px;word-break:normal;}
   >.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
   >  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
   >.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
   >.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
   ></style>
   ><table class="tg">
   ><thead>
   >  <tr>
   >    <th width="25%"><span style="font-weight:bold">Variável</th>
   >    <th width="30%"><span style="font-weight:bold">Valor</th>
   >    <th width="45%"><span style="font-weight:bold">Resumo</th>
   >  </tr>
   ></thead>
   ><tbody>
   >  <tr>
   >    <td>`COBMODE`</td>
   >    <td>"64"</td>
   >    <td>Versão pode ser 32 ou 64 bits, conforme o sistema operacional</td>
   >  </tr>
   >  <tr>
   >    <td>`SYSTERM`</td>
   >    <td>"/opt/microfocus/VisualCOBOL/terminfo/l"</td>
   >    <td>Localiza o banco de dados de terminal do sistema operacional</td>
   >  </tr>
   >  <tr>
   >    <td>`TERMO`</td>
   >    <td>"linux"</td>
   >    <td>Tipo de terminal</td>
   >  </tr>
   >  <tr>
   >    <td>`COBTERMINFO`</td>
   >    <td>"/opt/microfocus/VisualCOBOL/terminfo/l"</td>
   >    <td>Localiza o banco de dados de terminal do COBOL</td>
   >  </tr>
   >  <tr>
   >    <td>`COBPATH`</td>
   >    <td>"/d/exec:/d/fontes/exec:/d/fontes/logist"</td>
   >    <td>Localiza programas para carregamento dinâmico</td>
   >  </tr>
   >  <tr>
   >    <td>`COBIDY`</td>
   >    <td>"/d/exec:/d/fontes/exec:/d/fontes/logist"</td>
   >    <td>Localiza arquivos de informações do Animator (.idy)</td>
   >  </tr>
   >  <tr>
   >    <td>`COBCPY`</td>
   >    <td>"/d/exec:/d/fontes/exec:/d/fontes/logist"</td>
   >    <td>Localiza arquivos de cópia</td>
   >  </tr>
   >  <tr>
   >    <td>`COBSW`</td>
   >    <td>"-i+F"</td>
   >    <td>Define as chaves do sistema em tempo de execução (F: Validate numeric data in intermediate code, i: Enable keyboard interrupts)</td>
   >  </tr>
   >  <tr>
   >    <td>`dd_cobkeymp`</td>
   >    <td>"/d/exec/cobkeymp"</td>
   >    <td>Configuração de localização padrão do arquivo de configuração cobkeymp</td>
   >  </tr>
   >  <tr>
   >    <td>`dd_ADISCTRL`</td>
   >    <td>"/d/exec/ADISCTRL"</td>
   >    <td>Configuração de localização padrão do arquivo de configuração ADISCTRL</td>
   >  </tr>
   >  <tr>
   >    <td>`COLUMNS`</td>
   >    <td>"81"</td>
   >    <td>Quantidade de colunanas exibidas no terminal</td>
   >  </tr>
   >  <tr>
   >    <td>`PATH`</td>
   >    <td>"/opt/microfocus/VisualCOBOL/bin"</td>
   >    <td>Localiza os executaveis do sistema operacional, incluído o valor (/opt/microfocus/VisualCOBOL/bin)</td>
   >  </tr>
   >  <tr>
   >    <td>`LD_LIBRARY_PATH`</td>
   >    <td>"/opt/microfocus/VisualCOBOL/lib"</td>
   >    <td>Localiza as bibliotecas</td>
   >  </tr>
   ></tbody>
   ></table>
   
## 3. Compilação programama COBOL  
   >* Criado o bash script "/usr/bin/compila.sh [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/compila.sh "download")      
   ``` title="SCRIPT"
   --8<-- 'downloads/compila.sh'
   ```

   >* Exemplo abaixo demonstra uma compilação bem-sucedida do programa “senio.cbl”  
   >> ![](imgs/compilacaoOK.png#only-light){ align=left  width="100%"} ![](imgs/compilacaoOK.png#only-dark){ align=left  width="100%"}  
   >> Quando o programa.cbl for compilado com sucesso, o programa.int e o programa.idy serão copiados para pasta "/d/exec/"  
   >>* Não copiaremos mais o programa.cbl para o diretório "/d/exec/" pois, os diretório "/d/fontes/exec/" e "/d/fontes/logist/" estão configurados na variável COBCPY  
   >* Agora vamos demonstrar uma compilação mal-sucedida do “senio.cbl”  
   >> ![](imgs/compilacaoERRO.png#only-light){ align=left  width="100%"} ![](imgs/compilacaoERRO.png#only-dark){ align=left  width="100%"}  
   >> Quando o programa.cbl for compilado com erro, será listado na tela os erros gerados no programa e também será gerado no diretório atual um arquivo "programa.err"  
   
## 4. Configuração do ANIMATOR
   >* Criado bash script "/usr/bin/animcbl" [![](imgs/download.png#only-light){ align=center width="30"} ![](imgs/download.png#only-dark){ align=center width="30"}](downloads/animcbl "download")  
   ``` title="SCRIPT"
   --8<-- 'downloads/animcbl'
   ```
   > O script serve para carregar as variáveis necessárias para debugar o programa COBOL.   
   > A execução do mesmo é feita quando:  
   > No prompt do sistema operacional é digitado por exemplo:  
   > animcbl programa (o programa deve estar previamente compilado e, o programa.int, programa.idy devem estar no diretório "/d/exec/"   
   
## 5. Execução/Animação (cobrun/animcbl)
   >* Como exportamos as variáveis de ambiente podemos animar ou executar programas em qualquer diretório que o usuário estiver.  
   > Sempre irá executar no diretório "/d/exec/", pois esse diretório está importado na variável COBPATH como diretório padrão para busca de executáveis.   