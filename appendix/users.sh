#!/bin/zsh
# Mostra o usuário e o nome completo de cada usuário do sistema

cut -d ":" -f 1,5 --output-delimiter "  "  /etc/passwd
