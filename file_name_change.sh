#!/bin/bash

for i in {1..2}
do
	cd "variable$i" 
	echo "Welcome $i times"
    count=$(( $count + 0 )) # a wierd way to initialise the variable but this works for me but not count = 0
    for f in *.csv # for f files in the directory
    do
    	count=$(( $count + 1 )) # increment count++ 
	    #echo "$f" 
	    # following makes a sensor in a folder as 1 and rest all 0
	    if [ $count -eq $i ]
	    	then
	    	echo "yo"
		 #   echo "$f" 
		    mv "$f" "sensor$i.csv"
		else
			echo "no"
			mv "$f" "$f.0.csv"
			#mv "$f" "$f_sensor0.csv"
		fi
		echo "$count $i"
	done
	cd ..
	count=$(( $count - $count ))
    #count = 0
done
	
