#!/bin/bash

echo "<--	INSTALANDO CODECS	-->"

sudo pacman -Sy --needed --noconfirm a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins

echo "<--	Codecs instalados correctamente	-->"
