#!/bin/bash

echo "<--	INSTALANDO ALGUNAS APLICACIONES BASICAS	-->"

red=networkmanager network-manager-applet 

# Aplicacion de Red
if sudo pacman -Sy --needed --noconfirm $red &> /dev/null; then
	echo "<-- Aplicaciones de Red basica ya estan instalada	-->"
else
	sudo pacman -Sy --needed --noconfirm $red 
	sudo systemctl enable NetworkManager.service
fi
sleep 2

# bluetooh
sudo pacman -S --needed --noconfirm bluez bluez-libs bluez-utils blueberry

sudo systemctl enable bluetooth
sleep 2

# Aplicaciones Varias
sudo pacman -S --needed --noconfirm android-file-transfer msmtp libmtp libcddb gvfs gvfs-{afc,smb,libgphoto2,mtp,goa,nfs,google}
sleep 2

sudo pacman -S --needed --noconfirm dosfstools mtools jfsutils f2fs-tools btrfs-progs exfat-utils ntfs-3g reiserfsprogs udftools xfsprogs nilfs-utils polkit gpart
sleep 2

# Aplicaciones de sonido
sudo pacman -S --needed --noconfirm pulseaudio pulseaudio-alsa pulseaudio-bluetooth pavucontrol alsa-utils alsa-plugins alsa-lib alsa-firmware gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer 
sleep 2

# aplicaciones para comprimir y descomprimir
sudo pacman -Sy --needed --noconfirm p7zip p7zip-plugins zip unzip unrar tar rsync unace sharutils uudeview arj cabextract file-roller ark xarchiver unarchiver xz bzip2 lbzip2 arj lzop cpio zstd lzip unarj binutils lha lrzip lzip lz4
sleep 2

# otras aplicaciones
sudo pacman -Sy --needed --noconfirm archey3 baobab bleachbit catfish clementine conky curl darktable dconf-editor dmidecode evince evolution filezilla firefox galculator geary gimp git glances gnome-disk-utility gparted gpick grsync hardinfo hddtemp hexchat htop inkscape lm_sensors lsb-release meld mlocate mpv net-tools notify-osd numlockx openshot pinta plank polkit-gnome redshift ristretto sane screenfetch scrot shotwell simple-scan simplescreenrecorder smplayer sysstat terminator thunar transmission-cli transmission-gtk tumbler unclutter xdg-user-dirs xdg-utils

echo "<--	Instalado correctamente	-->"
