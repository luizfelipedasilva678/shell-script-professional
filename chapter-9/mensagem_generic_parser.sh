CONFIG="mensagem.conf"

USAR_CORES=0
COR_LETRA=
COR_FUNDO=
MENSAGEM="Mensagem padrão"

eval $(./parser.sh $CONFIG)

[ "$(echo $CONF_USARCORES | tr A-Z a-z)" = "on" ] && USAR_CORES=1
COR_FUNDO=$(echo $CONF_CORFUNDO | tr -d -c 0-9)
COR_LETRA=$(echo $CONF_CORLETRA | tr -d -c 0-9)
[ "$CONF_MENSAGEM" ] && MENSAGEM=$CONF_MENSAGEM

if test $USAR_CORES -eq 1; then
    echo -e "\033[$COR_FUNDO;${COR_LETRA}m$MENSAGEM\033[m"
else
    echo "$MENSAGEM"
fi
