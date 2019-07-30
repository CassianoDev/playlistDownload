Com este simples script você consegue baixar listas inteiras de reprodução em formato de playlist corretamente formatada em .m3u,
aceita qualquer formato de arquivo na lista.
Este script faz uso do WGET e BASH, se estiveres em ambiente Windows, instale o BASH (http://win-bash.sourceforge.net/) e o WGET (http://gnuwin32.sourceforge.net/packages/wget.htm).
<br>
Para usar, baixe-o em uma pasta pública, se a pasta for de admin dê permissão chmod+x mdown.sh 
ou crie o diretório que deseja salvar antes de seta-lo no arquivo.

Para baixar sua playlist digite: <br>
./mdown.sh <playlist.m3u> <caminho_para_salvar>

Exemplo:<br>
./mdown.sh filmes.m3u /var/www/meudownload
