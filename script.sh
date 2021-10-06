#!/bin/bash

opcion=""
mensaje=""

cd /home/javier/PracticaIS/IngenieriaSoftware

echo -e "\nComprobando si hay cambios..."
git fetch origin

echo -e "\nHaciendo pull..."
git pull

echo -e "\nPreparando archivos..."

touch nuevo_fichero.txt

git add -A

read -p 'Quieres hacer push? (S/n): ' opcion

if [ $opcion == 's' ] || [ $opcion == 'S' ]
then
	read -p 'Escribe el mensaje del commit: ' mensaje
	
	git commit -m "$mensaje"
	git push -u origin main
fi
