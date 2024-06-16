#!/bin/bash

while getopts ":sa:" opcao; do
    case $opcao in
    s) echo "OK Opção simples (-s)" ;;
    a) echo "OK opção com argumentos (-a), recebeu: $OPTARG" ;;
    \?) echo "ERRO Opção inválida: $OPTARG" ;;
    :) echo "ERRO faltou argumento para: $OPTARG" ;;
    esac
done

echo
shift $((OPTIND - 1))
echo "INDICE: $OPTIND"
echo "RESTO: $*"
echo
