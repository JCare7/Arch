#!/bin/bash

clear
while :
do
	echo "INSTALANDO DRIVERS XORG PARA PANTALLAS"
	echo "--------------------------------------"
	echo "1. Instalar drivers Xorg para INTEL"
	echo "2. Instalar drivers Xorg para AMD/ATI"
	echo "3. Instalar drivers Xorg para NVIDIA"
	echo "4. Instalar drivers para VIRTUALBOX"
	echo "5. Salir"
	echo "--------------------------------------"
	echo -n "Seleccione una opcion [1 - 5]: "
	read opcion

case $opcion in
	1)
		if pacman -Qi xf86-video-intel &> /dev/null; then
			echo "<--	Controlador de video Intel ya esta instalado	-->";
		else
			clear;
			echo "<---	Instalando driver INTEL	--->";
			sudo pacman -S --needed --noconfirm xorg xf86-video-intel;
		fi; exit;;
	2)
		if pacman -Qi xf86-video-ati &> /dev/null; then
			echo "<--	Controlador de video AMD/ATI ya esta instalado	-->";
		else
			clear;
			echo "<---	Instalando driver AMD/ATI	--->";
			sudo pacman -S --needed --noconfirm xorg xf86-video-ati;
		fi; exit;;
	3)
		if pacman -Qi xf86-video-noveau &> /dev/null; then
			echo "<--	Controlador de video NVIDIA ya esta instalado	-->";
		else
			clear;
			echo "<---	Instalando driver NVIDIA	--->";
			sudo pacman -S --needed --noconfirm xorg xf86-video-noveau;
		fi; exit;;
	4)
		if pacman -Qi virtualbox-guest-utils &> /dev/null; then
			echo "<--	Controlador de VirtualBox Guest Utils ya estan instalado	-->";
		else
			clear;
			echo "<---	Instalando VirtualBox Guest Utils	--->";
			sudo pacman -S --needed --noconfirm xorg virtualbox-guest-utils;
			sudo systemctl enable vboxservice
		fi; exit;;
	5)
		exit;;
	*)
		clear;;
esac
done

