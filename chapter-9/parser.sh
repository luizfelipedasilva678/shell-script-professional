CONFIG=$1

if [ -z "$CONFIG" ]; then
    echo Uso: parser arquivo.conf
    exit 1
elif [ ! -f "$CONFIG" ]; then
    echo Erro: Não consigo ler o arvivo $CONFIG
    exit 1
fi

while read -r LINHA; do
    [ "$(echo $LINHA | cut -c1)" = "#" ] && continue

    [ "$LINHA" ] || continue

    set $LINHA

    chave=$(echo $1 | tr a-z A-Z)
    shift
    valor=$*

    echo "CONF_$chave=\"$valor\""

done <"$CONFIG"
