#!/bin/bash
# usuarios.sh
#
#
# Versão 4

ordenar=0
inverter=0
maiusculas=0

MENSAGEM_USO="
USO $(basename "$0") [-h | -V]

-h Mostra esta tela de ajuda e sai
"

while test -n "$1"; do
    case "$1" in

    -s | --sort) ordenar=1 ;;
    -r | --reverse) inverter=1 ;;
    -u | --uppercase) maiusculas=1 ;;

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

    shift
done

lista=$(cut -d ":" -f 1,5 /etc/passwd)

test "$ordenar" = "1" && lista=$(echo "$lista" | sort)
test "$inverter" = "1" && lista=$(echo "$lista" | tac)
test "$maiusculas" = "1" && lista=$(echo "$lista" | tr a-z A-Z)

echo "$lista" | tr : \\t
