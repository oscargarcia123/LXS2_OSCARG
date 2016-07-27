#! /bin/bash

<<<<<<< HEAD
DATA=/home/useradmin/LXS2_OSCARG/hojasExcel/hojasDatos
=======
DATA=/home/sysadmin/LXS2_OSCARG/hojasExcel/hojasDatos
>>>>>>> 4b24adbb63378e96f71fc23367f8c0de1372e4e3
mkdir $DATA/datos_csv

OUT_DATA=$DATA/datos_csv

m=0

for i in 'find $DATA -name '*.xls' '
do
	echo "Procesando archivo $i"

	xls2csv $i > $OUT_DATA/dato-$m.csv
	let m=m+1
done 2> error1.log
