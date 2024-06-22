TXT="gritaria"
TXT="    $TXT     "
DEBUG=1

Debug() {
    [ "$DEBUG" = 1 ] && echo "$*"
}

Debug "TXT com espaços:  [$TXT]"

set -x
trap read DEBUG
echo "TXT com espaços    : [$TXT]"
TXT=$(echo "$TXT" | tr ' ' '!')
trap "" DEBUG
echo "TXT com exclamações: [$TXT]"
TXT=$(echo "$TXT" | tr a-z A-Z)

echo "$TXT"
