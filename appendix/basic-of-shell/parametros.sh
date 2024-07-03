#!/bin/zsh

for parametro in $(seq $#); do
    echo "Parametro $parametro: $1"
    shift
done
