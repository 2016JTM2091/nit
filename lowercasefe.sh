#!/bin/bash
count=0
dir=$1

for name in `ls -1 | grep -v $0`
do
        file_name=`echo $name|cut -d. -f1 `
        file_ext=`echo $name |cut -d. -f2-3 |tr -t [:upper:] [:lower:]`
        mv $name $file_name.$file_ext
	count=$((var+1))
done

echo "Number of file extensions changed- $count"
