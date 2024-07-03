#!/bin/zsh
# Verifica se arquivo existe

# Solicita o nome do arquivo
echo "Digite o arquivo: " 
read ARQUIVO

# Verifica se o arquivo existe e checa se é um arquivo ou um diretório
test -e $ARQUIVO && (test -f $ARQUIVO && echo "É um arquivo normal" || echo "É um diretorio") || echo "Arquivo '$ARQUIVO' não encontrado"

