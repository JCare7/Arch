#!/bin/bash

[ -d /tmp/aureola ] && rm -rf "/tmp/aureola"

if which git > /dev/null; then
	clear
	echo "Git esta instalada, procedemos a descargar e instalar Conky-Aureola"
else
	clear
	echo "Instalando GIT"
	sudo pacman -Sy --needed --noconfirm git
fi

git clone https://github.com/eridubois/Aureola /tmp/Aureola

[ -d ~/.aureola ] && rm -rf ~/.aureola
mv -f /tmp/aureola ~/.aureola
rm -rf /tmp/aureola

echo "Aureola lista para usar"
