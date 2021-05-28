#!/bin/bash

clear
while :
do
	echo "Escoja una opcion"
	echo "1. Usuarios conectados"
	echo "2. Consumo de recursos"
	echo "3. Servicios funcionales"
	echo "4. Salir"
	echo -n "Seleccione un opcion [1 - 4]: "
	read opcion
case $opcion in
	1) echo "Estan conectados: ";
		who;;
	2) echo "Ejecuntando htop";
		htop;;
	3) lsof -n -i -P | grep '*';;
	4) echo "Fin"; exit 1;;
	*) echo "$opcion es una opcion invalida";
		echo "Presiona una tecla para continuar";
		read;;
esac
done

