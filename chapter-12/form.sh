#!/bin/bash

echo "Content-Type: text/html"
echo

read TRIPA

urldecode() {
    echo -e $(sed 's/%/\\x/g')
}

IFS="&"
set - $TRIPA
for nome_valor; do
    nome_campo=$(echo "$nome_valor" | cut -d = -f 1)
    valor_campo=$(echo "$nome_valor" | cut -d = -f 2 | tr + " " | urldecode)

    eval $nome_campo\=\"$valor_campo\"
done

primeiro_nome=$(echo $nome | cut -d' ' -f1)

case "$idade" in
17)
    idade="Menos de 18"
    ;;
18-30)
    idade="Entre 18 e 30"
    ;;
31) idade="Mais de 30" ;;
esac

[ "$sexo" = F ] && sexo="Feminino" || sexo="Masculino"

cat <<FIM
    <h1>Dados de $primeiro_nome: </h1>

    <ul>
        <li><b>Nome: </b> $nome</li>
        <li><b>Idade: </b> $idade</li>
        <li><b>Sexo: </b> $sexo</li>
    </ul>
FIM
