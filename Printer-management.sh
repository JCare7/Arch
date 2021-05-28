#!/bin/bash

echo "<--	INSTALANDO GESTOR DE IMPRESORA	-->"

sudo pacman -Sy --needed --noconfirm cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer

sudo systemctl enable cups

echo "<--	Instalado correctamente	-->"
