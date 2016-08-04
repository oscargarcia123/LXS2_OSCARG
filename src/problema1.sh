#!/bin/bash
#DATA=/home/useradmin/LXS2_OSCARG/hojasExcel/hojasDatos
#DATA=/home/LXS2_OSCARG/hojasExcel/hojasDatos
DATA=/home/sysadmin/LXS2_OSCARG/hojasExcel/hojasDatos

mkdir $DATA/datos_csv
mkdir $DATA/datos_graf

OUT_DATA=$DATA/datos_csv
GRAF_DATA=$DATA/datos_graf

m=0

 for i in `find $DATA -name "*.xls"`
do
	echo "Procesando archivo $i"

	xls2csv $i > $OUT_DATA/dato-$m.csv
	let m=m+1
done 2> error1.log

m=0

  for e in `find $OUT_DATA -name "*.csv"`

do

 echo "Dando formato de datos para graficar el archivo $e"

  cat $e | awk -F "\",\"" '{print $1 " " $2 " " $3 " " 
   $4 " " $5}'| sed '1,$ s/"//g' | sed '1 s/date/#date/g'
    > $GRAF_DATA/graf-$m.dat

  let m=m+1
  done 2> error2.log

