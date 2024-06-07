#!/bin/zsh
# Mostra todos os shells que os usuários usam

cut -d ":" -f 7 /etc/passwd | uniq -u
