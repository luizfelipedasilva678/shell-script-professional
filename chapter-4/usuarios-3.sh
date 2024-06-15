#!/bin/bash
# usuarios.sh
#
#
# Versão 3

ordenar=0

MENSAGEM_USO="
USO $(basename "$0") [-h | -V]

-h Mostra esta tela de ajuda e sai
"

case "$1" in
-s | --sort)
    ordenar=1
    ;;
-h | --help)
    echo "$MENSAGEM_USO"
    exit 0
    ;;

-V | --version)
    grep '^# Versão' usuarios-2.sh | tail -l | cut -d : -f 1 | tr -d \#
    exit 0
    ;;

*)
    if test -n "$1"; then
        echo Opção inválida: $1
        exit 1
    fi
    ;;
esac

lista=$(cut -d ":" -f 1,5 /etc/passwd)

if test "$ordenar" = "1"; then
    lista=$(echo "$lista" | sort)
fi

echo "$lista" | tr : \\t
