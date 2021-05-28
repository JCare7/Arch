#!/bin/bash

echo "<--	INSTALANDO GESTOR AUR -YAY-	--->"
echo ""
if [ pacman -Qi yay  ]; then
	echo "<--	GESTOR YAY YA ESTA INSTALADO	-->";
	exit;
else 
	if [ pacman -Qi git ]; then
	else
		sudo pacman -S --needed --noconfirm git;
	fi;
	sudo git clone https://aur.archlinux.org/yay.git /tmp/ && cd /tmp/yay && makepkg -si && cd && rm -rf /tmp/yay;
	echo "<--	GESTOR YAY INSTALADO CORRECTAMENTE	-->"
fi;;
