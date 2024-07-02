#!/bin/bash

echo "Content-Type: text/html; charset=utf-8"
echo

hora_atual=$(date +%X)
x=2
y=3

echo "<p> Agora são $hora_atual</p>"
echo "Se eu somar <u>$x</u> com <u>$y</u> é <b>$((x + y))</b>"
