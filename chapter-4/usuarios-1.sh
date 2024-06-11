#!/bin/bash
MENSAGEM_USO="
USO $0 [-h]

-h Mostra esta tela de ajuda e sai
"

if test "$1" = "-h"; then
    echo "$MENSAGEM_USO"
    exit 0
elif test "$1" = "-V"; then
    echo "$0 Versão 1.0"
    exit 0
fi

cut -d ":" -f 1,5 /etc/passwd | tr : \\t
