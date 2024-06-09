USAR_CORES=1

mesagem_colorida() {
    local clear='\033[0m'
    local red='\033[0;31m'

    echo "${red} "$1" ${clear}"
}

if test "$TERM" = "vt100"; then
    USAR_CORES=0
fi

if test $USAR_CORES -eq 1; then
    mesagem_colorida $1
else
    echo $1
fi
