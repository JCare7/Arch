#!/bin/bash

clear
echo "<--	INSTALANDO GESTOR AUR -YAY-	--->"
echo ""
if pacman -Qi yay &> /dev/null; then
	clear
	echo "<--	GESTOR YAY YA ESTA INSTALADO	-->"
	exit
else 
	if pacman -Qi git &> /dev/null; then
		clear
		echo "<-- GIT ya esta instalado -->"
	else
		sudo pacman -S --needed --noconfirm git
	fi
	sudo git clone https://aur.archlinux.org/yay-git.git /tmp/yay-git && cd /tmp/yay-git && makepkg -si && cd && rm -rf /tmp/yay-git

	echo "<--	GESTOR YAY INSTALADO CORRECTAMENTE	-->"
fi
