#!/bin/bash

dir_count=0 
exec_count=0 
f_non_count=0
for i in *
do 

	if [ -d "$i" ]
	then ((dir_count++)) 

	elif [ -x "$i" ]
	then ((exec_count++)) 
		echo "$i" >> list_exe.txt
	elif [ -f "$i" ]
	then ((f_non_count++)) 
	
	fi 
done 

echo "vous avez $exec_count fichier executables, $dir_count dossier et $f_non_count fichier non executables."
