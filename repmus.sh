#!/bin/bash

#Programa reproductor de musica

clear

echo "..:: Reproductor musical ::.."

#Invoca al comando de mpg123 para iniciar el reproductor musical
command mpg123;


#el comando trap nos permite atrapar señales, en este caso, buscara aquellas con formato mp3 para el reproductor musical 
find /home/ -name "*.mp3"


#$@ : grupo de parametros del script
#echo IDa: $(!) y $@   #Este renglon es editable, ya que fue encontrado en el manual de 4 party


