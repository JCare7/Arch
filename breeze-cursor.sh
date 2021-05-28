#!/bin/bash

cursor="breeze-snow-cursor-theme"

if pacman -Qi $cursor &> /dev/null; then
	echo "<--	"$cursor" ya esta instalado"
	exit
else
	yay -S $cursor
	echo "<-- "$cursor" instalado correctamente -->"
fi;
