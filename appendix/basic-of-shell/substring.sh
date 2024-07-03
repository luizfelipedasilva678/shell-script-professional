#!/bin/sh

STRING="$2"
SUBSTRING="$1"

echo "$STRING" >/tmp/substring.txt

if grep $SUBSTRING /tmp/substring.txt; then
    echo "$SUBSTRING existe dentro de $STRING"
fi
