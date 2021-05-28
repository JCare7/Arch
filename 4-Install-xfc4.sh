#!/bin/bash

echo "<--	INSTALANDO ESCRITORIO XFC4	-->"

if pacman -Qi xfce4 xfc4-goodies &> /dev/null; then
	echo "<--	Escritorio XFC4 ya esta instalado	-->";
else
	sudo pacman -Sy --needed --noconfirm xfce4 xfce4-goodies;
	echo "<--	Escritorio Xfc4 instalado	-->";
fi;;

echo "<--	INSTALANDO GESTOR DE PANTALLA DE INICIO	-->"

if pacman -Qi lightdm lightdm-gtk-greeter lighdm-greeter-settings &> /dev/null; then
	echo "<--	Gestor de inicio ya esta instalado	-->";
else
	sudo pacman -Sy --needed --noconfirm lightdm lightdm-gtk-greeter lightdm-greeter-settings;
	sudo systemctl enable lightdm

	echo "<--	Gestor de inicio instalado correctamente	-->"
	echo "<--	Favor de reiniciar con el comando 'sudo reboot'	-->"
fi;;
