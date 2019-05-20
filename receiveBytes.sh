#!/bin/bash

var=0

rm out.txt

while true
do
	echo "[$var]-----------------------------------------------------------------------------" | tee -a out.txt
	nc -l 19999 | hexdump -C -v | tee -a out.txt
	echo $(date +"%Y-%m-%d %T") | tee -a out.txt
	var=$((var+1))
done

#--keep-open -x output.txt -o out --sh-exec "/home/iot/bin/echo.sh"

