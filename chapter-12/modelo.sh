#!/bin/bash

echo "Content-Type: text/html; charset=utf-8"
echo

login=$(whoami)
grupos=$(groups)
nome=$(grep "^$login:" /etc/passwd | cut -d : -f 5)

data=$(date "+%d.%m.%Y")
raiz=$(df / | tail -n 1 | tr -s ' \t' | cut -d ' ' -f 5)
barra_bin=$(ls -1 /bin | wc -l)

cat <<FIM

<h1> Dados do usuário </h1>
<ul>
    <li> Nome: $nome </li>
    <li> Login: $login </li>
    <li> Grupos: $grupos </li>
    <li> Home: $HOME </li>
</ul>

FIM
