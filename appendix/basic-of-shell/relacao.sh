#!/bin/zsh
# Testa a relação entre dois números

if test $(($1 - $2)) -lt 0
then
    echo "$1 é menor que $2"
elif test $(($1 - $2)) -gt 0
then
    echo "$1 é maior que $2"
else 
    echo "$1 é igual a $2"
fi
