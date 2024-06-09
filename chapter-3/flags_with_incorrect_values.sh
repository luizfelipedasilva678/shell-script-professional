chave=0
test $chave -eq 1 && echo "LIGADA"

chava=1
test $chave -eq 1 && echo "LIGADA"

chave=abc
test $chave -eq 1 && echo "LIGADA"

chave=
test "$chave" -eq 1 && echo "LIGADA"

test "$chave" = 1 && echo "LIGADA"
