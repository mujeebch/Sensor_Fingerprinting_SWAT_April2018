#!/bin/bash

for i in {1..18}
do
   echo "Welcome $i times"
   cp *.csv  "variable$i"
done

#for f in *.csv
#do 
 #  cp -v "$f" /variable"$"${f%.csv}"$(date +%m%d%y).csv
#done