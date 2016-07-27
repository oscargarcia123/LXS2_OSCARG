#! /bin/bash

DATA=/home/sysadmin/LXS2_OSCARG/hojasExcel/hojasDatos
mkdir $DATA/datos_csv

OUT_DATA=$DATA/datos_csv

m=0

for i in 'find $DATA -name '*.xls' '
do
	echo "Procesando archivo $i"

	xls2csv $i > $OUT_DATA/dato-$m.csv
	let m=m+1
done 2> error1.log
