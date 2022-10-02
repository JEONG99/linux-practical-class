#!/bin/sh
if [ $# -ne 2 ]
then
	echo "lnvaild input"
	exit 0
elif [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
	echo "Input must greater than 0"
	exit 0
else
	i=1
	j=1
	while [ $i -le $1 ]
	do
		while [ $j -le $2 ]
		do
			multi=`expr $i \* $j`
			printf "%d * %d = %d  " "$i" "$j" "$multi"   
			j=`expr $j + 1`
		done
		j=1
		i=`expr $i + 1`
		printf "\n"
	done
fi
