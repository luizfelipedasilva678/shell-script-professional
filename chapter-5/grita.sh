TXT="gritaria"
TXT="    $TXT     "

set -x
echo "TXT com espaços    : [$TXT]"
set +x
TXT=$(echo "$TXT" | tr ' ' '!')
echo "TXT com exclamações: [$TXT]"
TXT=$(echo "$TXT" | tr a-z A-Z)

echo "$TXT"
