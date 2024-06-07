#!/bin/zsh

VARIAVEL=10

if [ $VARIAVEL -eq 10 ]
then
    echo "Igual a 10"
else 
    echo "Diferente de 10"
fi

while test $VARIAVEL -le 20
do 
    echo "$VARIAVEL"
    VARIAVEL=$((VARIAVEL+1))
done

for numero in um dois tres quatro
do
    echo $numero
done

for numero in $(seq 10)
do
    echo $numero
done

while :
do
    if test $VARIAVEL -le 30
    then 
        echo "Aguardando chegar a 30"
        VARIAVEL=$((VARIAVEL+1))
    else    
        break
    fi
done