#!/bin/zsh

VALOR=$1

while test $VALOR -ge 0
do
    echo $VALOR
    VALOR=$((VALOR-1))
done