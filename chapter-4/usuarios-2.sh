#!/bin/bash
# usuarios.sh
#
#
# Versão 2

MENSAGEM_USO="
USO $(basename "$0") [-h | -V]

-h Mostra esta tela de ajuda e sai
"

case "$1" in
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

cut -d ":" -f 1,5 /etc/passwd | tr : \\t
