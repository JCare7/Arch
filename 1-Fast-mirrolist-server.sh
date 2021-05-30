#!/bin/bash
set -e
#
clear
echo "<---	Installing Reflector	--->"

sudo pacman -S --noconfirm --needed reflector

echo "<---	Finding fastest servers be patient for the World	--->"

sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.old
sudo reflector -l 100 -f 50 --sort rate --threads 5 --verbose --save /etc/pacman.d/mirrorlist

clear
echo "<---	Guardando los servidos mas rapidos del mundo	--->"

cat /etc/pacman.d/mirrorlist | head -n 20

sudo pacman -Sy

echo "<---	Listado de servidores actualizados	--->"
