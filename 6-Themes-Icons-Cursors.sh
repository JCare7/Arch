#!/bin/bash

theme="arc-gtk-theme"
icon="sardi-icons"
cursor="breeze-snow-cursor-theme"
iconsurfn="surfn-icon-git"

clear
while :
do
	echo "INSTALANDO THEMES, ICONS AND CURSORS"
	echo "--------------------------------------"
	echo "1. Instalar GTK-ARC-THEME"
	echo "2. Instalar SARDI-ICONS"
	echo "3. Instalar BREEZE-SNOW-CURSOR"
	echo "4. Instalar SURFN-ICON-GIT" 
	echo "5. Salir"
	echo "--------------------------------------"
	echo -n "Seleccione una opcion [1 - 5]: "
	read opcion

case $opcion in
	1)
		if pacman -Qi $theme &> /dev/null; then
			clear
			echo "<--	$theme ya esta instalado	-->"
			sleep 2
		else
			clear
			echo "<---	Instalando $theme	--->"
			yay -S --noconfirm $theme
		fi;;
	2)
		if pacman -Qi $icon &> /dev/null; then
			clear
			echo "<--	$icon ya esta instalado	-->"
			sleep 2
		else
			clear
			echo "<---	Instalando $icon	--->"
			yay -S --noconfirm $icon
		fi;;
	3)
		if pacman -Qi $cursor &> /dev/null; then
			clear
			echo "<--	$cursor ya esta instalado	-->"
			sleep 2
		else
			clear
			echo "<---	Instalando $cursor	--->"
			yay -S --noconfirm $cursor
		fi;;
	4)
		if pacman -Qi $iconsurfn &> /dev/null; then
			clear
			echo "<--	$iconsurfn ya esta instalado	-->"
			sleep 2
		else
			clear
			echo "<---	Instalando $iconsurfn	--->"
			yay -S --noconfirm $iconsurfn
		fi;;
	
	5)
		exit;;
	*)
		clear;;
esac
done

