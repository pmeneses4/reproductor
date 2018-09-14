#!/bin/bash

#Programa reproductor de musica

clear

while : 
do 
  menu=$(zenity --entry --text "..:: Reproductor musical ::..\nQue desea hacer?\n1.-Instrucciones\n2.-Reproducir una cancion\n3.-Reproducir carpeta de canciones\n4.-Salir\n" --entry-text "Opcion: ")
  
case $menu in
	1) echo "Instrucciones\n" ;;
	2) ruta=$(zenity --entry --text "***Dame la ruta de cancion***\nEj. /home/usuario/carpeta.../nombreconsuextension" --entry-text "Ruta: " --entry --text "hola");
	   mpg123 -C $ruta ;;
	3) ruta=$(zenity --entry --text "***Dame la ruta de la carpeta***\nEj. /home/usuario/carpeta.../carpetademusica" --entry-text "Ruta: ");
           cd $ruta;
	   mpg123 -vC *.mp3 ;;
	4) exit ;;
	*) zenity --info --text "No valida tu opcion man" ;;
esac 

done 


#Invoca al comando de mpg123 para iniciar el reproductor musical
#command mpg123;


#el comando trap nos permite atrapar señales, en este caso, buscara aquellas con formato mp3 para el reproductor musical 
#find /home/ -name "*.mp3" || read; #|| cat playlist;
#mpg123 -vC /home/yadfani/Escritorio/rats.mp3;

#mpg123 -vC read .mp3;

#shadow;

#$@ : grupo de parametros del script
#echo IDa: $(!) y $@   #Este renglon es editable, ya que fue encontrado en el manual de 4 party


