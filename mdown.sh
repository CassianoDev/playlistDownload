#!/bin/bash
#cassiano.dev
set -ue
usage() {
    name=${i:-'mdown.sh'}
    echo "Use: $name minhaplaylist.m3u /pasta/para/salvar" >&2
    exit 1
}
if [ -z "${1:+x}" ]; then
    echo "Nenhuma playlist." >&2
    usage
fi
if [ -z "${2+x}" ]; then
    echo "Voce nao setou um diretorio de saida." >&2
    usage
fi
playlist=$1
outputdir=${2%/}
if [ ! -d $outputdir ]; then
  echo -e "Criando pasta $outputdir.\n"
  mkdir -p $outputdir
fi
declare -i lines=$(wc -l < $playlist)
declare -i videos=($lines-1)/2
for ((video = 1; video <= $videos; video++)); do
  videotitle="$(awk "NR==$video*2 {print}" $playlist | cut -d',' -f2-)"
  videotitle=${videotitle//\//-}
  echo -e "$video/$videos\tBaixando $videotitle"
  videolink="$(awk "NR==$video*2+1 {print}" $playlist)"
  extension="${videolink##*.}"
  wget -O "$outputdir/$video $videotitle.$extension" --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" $videolink
done

echo -e "\nTodos os videos foram baixados."
