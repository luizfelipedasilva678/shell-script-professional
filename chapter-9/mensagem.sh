CONFIG="mensagem.conf"

USAR_CORES=0
COR_LETRA=
COR_FUNDO=
MENSAGEM="Mensagem padrão"

while read -r LINHA; do
    [ "$(echo $LINHA | cut -c1)" = "#" ] && continue

    [ "$LINHA" ] || continue

    set $LINHA

    chave=$(echo $1 | tr A-Z a-z)
    shift
    valor=$*

    case "$chave" in
    usarcores)
        [ "$(echo $valor | tr A-Z a-z)" = "on" ] && USAR_CORES=1
        ;;
    corfundo)
        COR_FUNDO=$(echo $valor | tr -d -c 0-9)
        ;;
    corletra)
        COR_LETRA=$(echo $valor | tr -d -c 0-9)
        ;;
    mensagem)
        [ "$valor" ] && MENSAGEM=$valor
        ;;
    *)
        echo "Opção inválida: $chave"
        exit 1
        ;;
    esac
done <"$CONFIG"

if test $USAR_CORES -eq 1; then
    echo -e "\033[$COR_FUNDO;${COR_LETRA}m$MENSAGEM\033[m"
else
    echo "$MENSAGEM"
fi
