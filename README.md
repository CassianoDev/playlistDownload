Com este simples script você consegue baixar listas inteiras de reprodução em formato de playlist corretamente formatada em .m3u,
aceita qualquer formato de arquivo na lista.
Para usar, baixe-o em uma pasta pública, se a pasta for de admin dê permissão chmod+x mdown.sh 
ou crie o diretório que deseja salvar antes de seta-lo no arquivo.

Para baixar sua playlist digite: <br>
./mdown.sh <playlist.m3u> <caminho_para_salvar>

Exemplo:<br>
./mdown.sh filmes.m3u /var/www/meudownload


USUÁRIOS WINDOWS:<br>
Para usar o script no Windows, baixe o arquivo zip abaixo: <br>
https://github.com/CassianoDev/playlistDownload/raw/master/mdown.zip

Descompacte-o em uma pasta de sua preferência.<br>
Ex: Documentos <br>
Após extrair, abra seu CMD de preferência como administrador, navegue até a pasta onde você extraiu o arquivo zip, que no nosso exemplo foi em Documentos, então no CMD digitamos: cd C:\Users\exemplo\Documents\mdown.<br>
Com o CMD no diretório do mdown, digite: bash.<br>

Note que seu CMD agora aparece: "bash$"...<br>
Agora digite os comandos do mdown para baixar, como descrito acima:<br>
./mdown.sh <playlist.m3u> <caminho_para_salvar> <br>
Respeite o modo de digitar com ./ antes de mdown; "./mdown.sh"<br>
Note que no Windows usamos barras '/' para apontar para um diretório, então se sua playlist estiver em Documentos por exemplo, e você copiar o nome do diretório para colar no CMD, lembre-se de coloca-lo como barras normais '/', exemplo:<br>
./mdown.sh C:/Users/exemplo/Documents/playlist.m3u /filmes
<br>

O diretório para você salvar seus conteúdos, será C:, então no exemplo acima estaremos selecionando a playlist que está em documentos, e salvando em C:/filmes, se quiser salvar em algum outro diretório ou sub-diretório, informe o caminho completo!<br>
Exemplo:<br>

./mdown.sh C:/Users/exemplo/Documents/playlist.m3u C:/Users/exemplo/videos

