#!/bin/bash

writefile=$1
writestr=$2

if [ -n "$writefile" ] && [ -n "$writestr" ]
then
    echo "The writer variables are created successfully"
else
    echo "The writer variables were not created successfully"
    exit 1
fi

if [ -e "$writefile" ]
then
    echo "The file exists and the string is being written"
    echo "$writestr" > "$writefile"
    echo " String $writestr has been written in $writefile"
else
    echo "File does not exist. Creating the file $writefile ..."
    dirpath=$(dirname $writefile)
    mkdir -p $dirpath
    touch $writefile
    echo "$writestr" > "$writefile"
    echo "File $writefile has been created and string $writestr has been written"
fi

