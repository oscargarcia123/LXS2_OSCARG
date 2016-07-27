#! /bin/bash

## Este scrip revisa  los Argumenot de errores
# definicion de Variables 
errorlog="$0.err"

if cp archivo1.txt archivo1.txt.bkup 2> $ERRORLOG
then
	if cp archivo2.txt archivo2.txt.bkup 2> $ERRORLOG
		
        echo "el comando se ejecuto correctamente"
	fi
else
	echo "El archivo no pudo ser respaldados, 
por lo tanto el archivo2;  verifique $ERRORLOG"
		vat $ERRORLOG | "Error de respaldos " oscarg1677@gmail.com

fi

