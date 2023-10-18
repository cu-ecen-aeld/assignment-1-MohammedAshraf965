#!/bin/bash

filesdir=$1
searchstr=$2

if [ -n "$filesdir" ] && [ -n "$searchstr" ]
then
    echo "The variables were created successfully"
else
    echo "The variables were not created"
    exit 1
fi

if [ -d "$filesdir" ]
then
    echo "The directory exists on the filesystem"
    files_count=$(find "$filesdir" -type f | wc -l)
    word_count=$(grep -r "$searchstr" "$filesdir" | wc -l)
    echo "The number of files are $files_count and the number of matching lines are $word_count"
else
    echo "The directory does not exist on the filesystem"
    exit 1
fi

