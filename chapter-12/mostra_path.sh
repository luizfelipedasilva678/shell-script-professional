#!/bin/bash

echo "Content-Type: text/html; charset=utf-8"
echo

PATH=$PATH:/noel

echo "<h1> Componentes do seu PATH </h1>"

echo "<ul>"

IFS=:

for dir in $PATH; do
    if test -d $dir; then
        extra="<font color=\"green\"> existe </font>"
    else
        extra="<font color=\"red\"> não existe </font>"
    fi

    echo "<li> $dir ($extra) </li>"
done

echo "</ul>"
