#!/bin/zsh
# sistema - script que mostra os dados do sistema
# Autor: Fulano da Silva

# Pede uma confirmação do usuário
echo "Vou buscar os dados do sistema. Posso continuar? [sn] "
read RESPOSTA

# Se a resposta for n, sai do script
test "$RESPOSTA" = "n" && exit

# O date mostra a data e o horário
echo "Data e horário: "
date
echo

# O df mostra as partições e quanto cada uma ocupa no disco
echo "Uso do disco: "
df
echo 

# O w mostra os usuários conectados
echo "Usuário conectado: "
w